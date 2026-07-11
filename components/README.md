# ProductPilot 产品组件库

本目录提供了一套可以直接被 AI Agent 实例化或供产品经理在设计原型、画流程图时调用的可编辑组件规范。

## 组件目录结构

```
components/
├── README.md               # 本文档
├── architecture/           # 系统拓扑与架构图组件
├── flowcharts/             # 业务流程图与跨系统泳道图组件
├── timelines/              # 阶段交付时间轴组件
├── roadmaps/               # 产品路线图组件
├── user-journey/           # 用户旅程矩阵组件
├── matrices/               # 竞品与痛点分析矩阵组件
├── swot/                   # SWOT 分析卡片组件
├── decision-tree/          # 商业决策与逻辑判断树组件
├── state-diagram/          # 状态机变换图组件
├── sequence-diagram/       # 接口调用时序图组件
└── ui-wireframes/          # TV/移动/Web 界面线框图与原型组件
```

## 编写与使用标准
* **可编辑性优先**：组件在输出给用户时，默认采用标准的 **Mermaid** 或 **HTML/SVG** 代码定义。
* **语言规范**：组件内部的标注、示例说明文字，默认必须全部采用**简体中文**。
* **相对路径**：任何组件内包含的样式与静态资源，必须使用相对路径。
