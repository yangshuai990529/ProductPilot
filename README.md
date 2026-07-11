# ProductPilot: 面向产品经理的 AI 产品工作操作系统

ProductPilot 是专为产品经理设计的开源 AI 工作操作系统，旨在帮助产品经理完成从需求洞察、竞品研究、产品方案、产品需求文档（Product Requirements Document，PRD）、系统需求（System Requirement，SR）、原型规划、评审到汇报材料生成的完整工作流。

我们的长期目标是成为产品经理领域的 GitHub Copilot 和 Cursor，提供可以直接用于汇报、评审、设计和开发的专业级产品材料。

---

## 项目愿景

ProductPilot 的定位不是一个简单的 Prompt 集合，也不是纯文本生成器。它能够：
1. **深度理解背景**：检索企业内部及行业标准的知识库，复用历史方案。
2. **执行标准工作流**：按照严密的产品逻辑推导方案（问题 → 证据 → 原因 → 影响 → 方案 → 功能 → 验收标准）。
3. **输出专业级材料**：生成兼容 Microsoft PowerPoint、Apple Keynote、Figma 等主流软件的可编辑 PPTX 结构描述、HTML/CSS 交互原型和高可测试性的 SR/PRD。

---

## 项目架构

项目采用松耦合、模块化的架构设计，以便未来集成到各类 IDE、AI 辅助工具（如 Claude Code, Cursor）或协同办公平台（Jira, Confluence）：

```
ProductPilot/
├── README.md               # 项目总览与使用说明
├── AGENTS.md               # AI Agent 行为规范与文字层级要求
├── LICENSE                 # 开源许可协议 (Apache 2.0)
├── CHANGELOG.md            # 版本更新日志
├── CONTRIBUTING.md         # 贡献指南
├── SECURITY.md             # 安全与敏感凭证防护指引
├── .gitignore              # Git 忽略文件配置
├── .env.example            # 本地环境变量配置示例
│
├── skills/                 # 核心 AI Skills 系统 (11个内置领域专家)
├── knowledge/              # 行业规范、技术规格等标准知识库 (可扩展)
├── templates/              # 各类汇报、PRD、SOP 模板
├── examples/               # 真实脱敏的历史优秀案例
├── design-system/          # 字体字重、颜色、间距、PPT 跨软件兼容规范
├── components/             # 可编辑的架构图、时序图、对比矩阵、原型组件
├── prompts/                # 系统内置 Prompt 库
├── scripts/                # 自动化格式自检与防凭证泄露脚本
├── assets/                 # 图标、示意图等静态资源存放区
└── output/                 # 导出产物输出目录
```

---

## 快速开始

### 1. 复制配置环境
```bash
cp .env.example .env
```
然后在 `.env` 文件中填写您的 API 密钥（如 `GEMINI_API_KEY`）及协作平台访问凭证。

### 2. 运行本地仓库自检
在提交任何修改前，请确保运行自检脚本以防止敏感密钥泄露并检查格式：
```bash
bash scripts/check_repo.sh
```

---

## 核心内置 Skills 列表

我们内置了 11 个垂直领域的 AI 专家角色，每个角色在 `skills/` 下均有详细的 `SKILL.md` 指南：

1. **[PPT Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/ppt/SKILL.md)**: 专注于生成汇报与评审级演示文稿结构与内容。
2. **[PRD Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/prd/SKILL.md)**: 生成标准产品需求文档，着重业务逻辑与功能边界。
3. **[SR Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/sr/SKILL.md)**: 系统需求专家，输出包含 API 接口、数据流及开发依赖的技术规格。
4. **[Product Review Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/review/SKILL.md)**: 多视角评审引擎，提早发现 Blocker 与 High 风险。
5. **[Competitive Analysis Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/competitive-analysis/SKILL.md)**: 自动生成多维度竞品对比矩阵与差异化优势分析。
6. **[Research Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/research/SKILL.md)**: 用户旅程与行业数据研究专家。
7. **[Roadmap Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/roadmap/SKILL.md)**: 里程碑规划与开发周期依赖分析。
8. **[TV Product Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/tv/SKILL.md)**: 智能电视大屏端十英尺界面交互与焦点导航设计专家。
9. **[Picture Quality Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/pq/SKILL.md)**: 画质产品设计，涵盖 HDR、Dolby Vision、校准及 VRR。
10. **[DFS Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/dfs/SKILL.md)**: DFS 动态频率选择与 Wi-Fi 规格设计硬件层交互专家。
11. **[AI Product Expert](file:///Users/eric/Downloads/PPT/Github/ProductPilot/skills/ai/SKILL.md)**: AI Agent 行为准则、Prompt 工程与 RAG 应用方案设计专家。

---

## 路线图 (Roadmap)

- **V1: 仓库基础架构** (当前版本) - 完成基础规范、设计系统、11个内置 Skill 定义与模板组件库建设。
- **V2: Skills 系统运行态** - 提供 CLI 工具，能够基于单个 Skill 生成相应的 Markdown 文档。
- **V3: 知识库 RAG 检索** - 支持通过向量数据库检索本地知识库并应用到产品方案生成中。
- **V4: 自动生成 PPTX 文件** - 支持将 PPT 方案一键渲染为 Microsoft PowerPoint 可直接编辑的 `.pptx` 文件。
- **V5: 多 Agent 协作评审** - 启动本地多角色 Agent 自动对抗性评审（如产品与测试、研发角力评审）。

---

## 开源协议

本项目采用 [Apache License 2.0](file:///Users/eric/Downloads/PPT/Github/ProductPilot/LICENSE) 开源许可协议。
