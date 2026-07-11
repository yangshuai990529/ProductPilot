# 安全政策 (SECURITY)

## 支持的版本

我们仅对以下版本提供安全漏洞更新支持：

| 版本 | 支持状态 |
| :--- | :--- |
| 1.0.x | :white_check_mark: 支持中 (Active) |

## 汇报安全漏洞

**请勿使用公开的 GitHub Issue 来报告安全漏洞。**

如果您发现任何安全缺陷（包括敏感 Token 泄漏、越权访问、RAG 注入漏洞等），请将漏洞详情发送至：

`yangshuai990529@gmail.com`

我们在收到您的邮件后，将在 48 小时内确认并评估漏洞，并在 7 天内推出修复版本。

## 敏感数据防护机制

ProductPilot 核心功能涉及与大模型（Gemini / OpenAI / Claude）及企业协同系统（Jira / Confluence / GitHub）的连接。为保障信息安全，请遵循以下防泄漏准则：

1. **凭证脱敏**：任何密钥、密码及访问令牌（Access Token）都应写入本地 `.env` 文件，禁止将密钥写入配置文件或代码并提交。
2. **知识库隔离**：属于商业机密的私有知识请存放在 `knowledge/private/`（已被 `.gitignore` 忽略），公开的 `knowledge/` 仅能存放行业公开规范。
3. **敏感信息自检**：在进行 Git 提交前，应运行 `./scripts/check_repo.sh` 脚本，防止意外包含敏感信息。
