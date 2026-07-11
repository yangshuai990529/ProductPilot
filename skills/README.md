# ProductPilot Skills 系统

本目录包含 ProductPilot 核心的 AI Skills，每个 Skill 代表一个垂直领域的产品专家角色。

## Skill 目录结构

每个 Skill 子目录必须包含一个 `SKILL.md` 规范文件，详细定义了该角色的行为、流程与输入输出规范。

```
skills/
├── README.md               # 本文档
├── ppt/                    # PPT Expert
├── prd/                    # PRD Expert
├── sr/                     # SR Expert
├── review/                 # Product Review Expert
├── research/               # Research Expert
├── competitive-analysis/   # Competitive Analysis Expert
├── roadmap/                # Roadmap Expert
├── tv/                     # TV Product Expert
├── pq/                     # Picture Quality Expert
├── dfs/                    # DFS Expert
└── ai/                     # AI Product Expert
```

## 使用指南

AI Agent 在承接具体任务时，必须先读取对应目录下的 `SKILL.md`。例如，当需要设计一个画质（Picture Quality）特性时，Agent 应该首先调用 `skills/pq/SKILL.md`，以此获取最权威的执行规则。
