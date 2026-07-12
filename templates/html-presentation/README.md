# 模板 - HTML/CSS 网页幻灯片模板 (HTML/CSS Presentation Template)

## 1. 使用场景
本模板适用于高级别产品评审、管理层汇报及跨团队方案宣讲。当传统的 PPTX 幻灯片（Microsoft PowerPoint / Apple Keynote）无法高还原设计系统（Design System）中的毛玻璃特效（Glassmorphism）、动态渐变色和自适应组件时，首选本 HTML 网页幻灯片进行网页端演示。

---

## 2. 页面与章节结构

本模板基于原生 HTML/CSS/JS 编写，无任何第三方库依赖，支持开箱即用及本地零配置运行。

### 2.1 样式控制与布局预设 (CSS Classes)
* `.slide`: 单页幻灯片容器，强制 16:9 比例（1920x1080 原生画布，支持自适应缩放）。
* `.glass-card`: 磨砂玻璃卡片效果（Backdrop Filter），用于突出显示核心要点。
* `.grid-2-col`: 左右双栏等宽网格，左侧文字（3-4 条 L4 核心要点），右侧放置原型或架构图。
* `.metric-grid`: 数据指标矩阵网格（如 2x2 或 3 列卡片组合）。
* `.timeline-container`: 阶段交付时间轴排版。

### 2.2 交互快捷键 (Keyboard Shortcuts)
在浏览器中打开生成的 HTML 幻灯片后，可使用以下快捷键：
* `Space` 键 或 `→` 键 / `↓` 键：切换至下一页（Next Slide）。
* `←` 键 或 `↑` 键：切换至上一页（Previous Slide）。
* `Home` 键：返回第一页。

---

## 3. PDF 导出与分发指南 (PDF Export Guide)
当需要以离线文件形式分发给管理层或评审委员时，请按照以下步骤导出高保真 PDF：
1. 用 **Google Chrome** 或 **Microsoft Edge** 浏览器打开生成的幻灯片 HTML 文件。
2. 调出系统打印窗口：按快捷键 `Ctrl + P` (Windows) 或 `Cmd + P` (macOS)。
3. 在打印设置中进行如下配置：
   * **目标打印机**: 选择 `另存为 PDF (Save as PDF)`。
   * **布局**: 选择 `横向 (Landscape)`。
   * **纸张大小**: 选择 `A4`（默认）或 `自定义`。
   * **边距**: 选择 `无 (None)`。
   * **选项**: 勾选 `背景图形 (Background graphics)`（极为重要，否则渐变与毛玻璃底色无法显示）。
4. 点击 `保存 (Save)`，即可获得一份像素级对齐、无乱码错位的 PDF 文档。
