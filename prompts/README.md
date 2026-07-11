# ProductPilot Prompt 提示词库

本目录保存了系统内置的核心 Prompt 库，可供产品经理在日常工作中直接复制并导入到各大主流 AI 助手（如 ChatGPT, Gemini, Claude）中运行。

## 提示词目录结构

```
prompts/
├── README.md               # 本文档
├── ppt_prompt.txt          # 用于渲染 16:9 幻灯片的结构化 Prompt
├── prd_prompt.txt          # 生成可执行、可开发 PRD 的提示词
└── review_prompt.txt       # 进行多维度自动评审的对抗提示词
```

## 设计原则
* **完全符合中文规范**：所有内置 Prompt 的 System Instructions 均默认强制 AI 使用简体中文输出，并剔除营销话术。
* **分级明确**：明确指出需要遵循的文字层级（L1–L6）和排版字号。
