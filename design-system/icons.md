# 设计系统 - 图标使用规范 (Icons)

* **更新时间**: 2026-07-11

图标是重要的视觉辅助语言。ProductPilot 规定在网页端与原型设计中优先使用原生的 **SVG** 图标，在文档与 PPT 中如果不支持 SVG，则提供高清透明底 **PNG** 图标作为备用版本。

## 1. 图标设计与使用原则

* **统一视重 (Visual Weight)**:
  - 所有的图标风格必须保持一致（全线性 Outline 或全面性 Filled）。禁止在同一页 PPT 内混用细线条图标与粗面性图标。
* **简洁具象性**:
  - 图标必须能够准确传达语义（如：房子代表主页，齿轮代表设置）。禁止为了追求新鲜感使用含义模糊或晦涩的抽象图标。

---

## 2. SVG 导出技术规范
在生成 HTML 原型或编写组件时，嵌入的 SVG 代码必须符合以下标准：

```xml
<svg 
  xmlns="http://www.w3.org/2000/svg" 
  width="24" 
  height="24" 
  viewBox="0 0 24 24" 
  fill="none" 
  stroke="currentColor" 
  stroke-width="2" 
  stroke-linecap="round" 
  stroke-linejoin="round"
  class="icon-svg">
  <!-- 具体的 Path 描边代码 -->
</svg>
```

### 关键点说明
1. **尺寸缩放性**：设置 `viewBox="0 0 24 24"`，且设置 `width` 和 `height` 为相对大小或可在 CSS 中覆盖。
2. **色彩继承性**：设置 `stroke="currentColor"`，使图标能够自动继承其父文本元素的 CSS 颜色，从而支持一键切换主题颜色或高亮选中状态。
3. **禁用内联 Absolute 样式**：禁止在 SVG 内部硬编码 `style="position:absolute; left:20px..."` 等绝对定位代码，避免容器形变时图标拉伸变形。
