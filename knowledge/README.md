# ProductPilot 产品知识库

本目录用于存放可信、可复用、具有明确更新时间的产品知识与技术规格，为各个 AI Skills 提供标准的上下文检索。

## 目录结构

```
knowledge/
├── README.md               # 本文档
├── tv/                     # 智能电视大屏交互设计指南
├── pq/                     # 画质 (Picture Quality) 技术标准与引擎规格
├── ai/                     # AI Agent 设计与 Prompt 防护原则
├── dfs/                    # DFS (动态频率选择) 频段与国家准入规范
├── calibration/            # 屏幕校准 (Calibration) 标准工作流
├── dolby/                  # 杜比 (Dolby Vision / Atmos) 集成规范
├── google-tv/              # Google TV 系统规范与认证标准
├── fire-tv/                # Fire TV 开发与设计限制
├── menu-tree/              # 电视系统菜单树层级设计规范
├── sr/                     # 系统需求 (SR) 编写规范与模板
└── glossary/               # 产品专业术语表 (中文-English 映射)
```

## 知识文档编写规范

每一份存放在子目录中的知识文档（如 `knowledge/tv/guide.md`）必须包含以下元数据信息：

```markdown
# [知识文档名称]

* **定义**: [该知识的核心定义]
* **适用范围**: [哪些产品或平台适用]
* **核心概念**: [重点技术或体验名词解析]
* **平台差异**: [如 Google TV 与 Fire TV 的不同点]
* **版本状态**: [Draft / Active / Deprecated / Archived]
* **数据来源**: [如 HDMI 2.1 规范, 杜比白皮书]
* **更新时间**: [YYYY-MM-DD]
```

> [!WARNING]
> 任何标记为 `Deprecated` (已废弃) 或 `Archived` (已归档) 的知识内容，AI Agent 在生成产品方案时不得作为当前事实复用。
