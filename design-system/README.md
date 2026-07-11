# ProductPilot 设计系统规范 (Design System)

为了让 ProductPilot 生成的界面原型、文档及 PPT 展现出极致的专业水准，我们建立了一套完整、一致且跨应用兼容的设计规范系统。

## 规范文档概览

本目录包含以下设计系统模块，所有 AI Agent 在生成产品交付材料前均需遵守相应的规范：

```
design-system/
├── README.md               # 本文档
├── typography.md           # 字体排版与回退机制规范
├── colors.md               # 色彩搭配与主题规范
├── layout.md               # 16:9 页面比例及网格定位规范
├── spacing.md              # 间距与内容对齐规范
├── icons.md                # 图标选型与 SVG 导出标准
├── images.md               # 占位图片与 AI 提示词规范
├── charts.md               # 流程图与数据图表表达选择规范
├── animation.md            # 微交互动效设计规范
├── compatibility.md        # PPTX/Keynote 跨应用物理兼容细节
└── ppt-guidelines.md       # PPT 页面字号与重心编排指引
```

## 核心设计哲学
1. **多端兼容优先**：确保在 PowerPoint, Keynote, Figma 和 HTML 端均有一致的解析结果。
2. **文字层级绝对醒目**：通过字重与大小拉开视觉差，拒绝只用颜色区分重要级。
3. **极简大图风**：汇报场景遵循“图大于字”原则，严禁堆积大段文本。
