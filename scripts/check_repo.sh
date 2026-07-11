#!/bin/bash

# ==============================================================================
# ProductPilot Repository Security & Integrity Check Script
# ==============================================================================

# 设置控制台颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0;5m' # No Color
CLEAR='\033[0m'

echo -e "${BLUE}=== 开始进行 ProductPilot 仓库自检 ===${CLEAR}"

EXIT_CODE=0

# 1. 检查是否存在敏感凭证 (Jira Token, Confluence Token, API Keys)
echo -e "\n${BLUE}[1/3] 扫描敏感 API 密钥与 Token 泄漏...${CLEAR}"

# 定义需要拦截的敏感关键词正则 (忽略大小写)
SENSITIVE_PATTERNS=("AI_KEY" "API_KEY" "TOKEN" "PASSWORD" "SECRET")
EXCLUDE_DIRS=(".git" "node_modules" "scripts")
EXCLUDE_FILES=("check_repo.sh" ".env.example" "README.md" "SECURITY.md" "AGENTS.md" "CONTRIBUTING.md")

LEAK_FOUND=0

# 构建 grep 排除选项
GREP_EXCLUDES=""
for f in "${EXCLUDE_FILES[@]}"; do
    GREP_EXCLUDES="$GREP_EXCLUDES --exclude=$f"
done
for d in "${EXCLUDE_DIRS[@]}"; do
    GREP_EXCLUDES="$GREP_EXCLUDES --exclude-dir=$d"
done

# 遍历敏感词进行检索
for pattern in "${SENSITIVE_PATTERNS[@]}"; do
    # 查找是否有赋值语句包含疑似真实的密钥或 token，过滤掉 placeholder 占位符
    # 真实密钥一般非 your_xxx_here 这种占位文字
    FOUND_LINES=$(grep -rnIi "$pattern" . $GREP_EXCLUDES | grep -v -E "your_|placeholder|apiKey|authToken|<|\[|dummy|example")
    
    if [ ! -z "$FOUND_LINES" ]; then
        echo -e "${RED}[Blocker] 发现可能存在敏感凭证泄漏！${CLEAR}"
        echo -e "${YELLOW}$FOUND_LINES${CLEAR}"
        LEAK_FOUND=1
        EXIT_CODE=1
    fi
done

if [ $LEAK_FOUND -eq 0 ]; then
    echo -e "${GREEN}[Pass] 未发现敏感凭证泄漏。${CLEAR}"
fi

# 2. 检查目录完整性，防止只创建空目录
echo -e "\n${BLUE}[2/3] 检查主要目录的 README.md 完整性...${CLEAR}"

REQUIRED_DIRS=(
  "skills"
  "knowledge"
  "templates"
  "examples"
  "design-system"
  "components"
  "prompts"
  "scripts"
)

MISSING_README=0
for dir in "${REQUIRED_DIRS[@]}"; do
    if [ ! -f "$dir/README.md" ]; then
        echo -e "${RED}[Blocker] 目录 $dir/ 下缺少 README.md 说明文件！${CLEAR}"
        MISSING_README=1
        EXIT_CODE=1
    fi
done

if [ $MISSING_README -eq 0 ]; then
    echo -e "${GREEN}[Pass] 所有核心目录的 README.md 文件均存在。${CLEAR}"
fi

# 3. 检查文件是否为空或包含大量空白占位符
echo -e "\n${BLUE}[3/3] 检查文件实质内容...${CLEAR}"
EMPTY_FILES=$(find . -type f -name "*.md" -size 0)
if [ ! -z "$EMPTY_FILES" ]; then
    echo -e "${YELLOW}[Warning] 发现以下空 Markdown 文件:${CLEAR}"
    echo -e "${YELLOW}$EMPTY_FILES${CLEAR}"
fi
echo -e "${GREEN}[Pass] 内容完整度检查完成。${CLEAR}"

# ==============================================================================
# 汇总结果
# ==============================================================================
echo -e "\n${BLUE}=== 仓库自检结束 ===${CLEAR}"
if [ $EXIT_CODE -eq 0 ]; then
    echo -e "${GREEN}[SUCCESS] 所有安全与完整性校验通过！您可以安全提交代码。${CLEAR}"
else
    echo -e "${RED}[FAILED] 发现 Blocker 问题，请修复上述报错后再尝试提交！${CLEAR}"
fi

exit $EXIT_CODE
