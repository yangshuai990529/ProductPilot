# 设计系统 - 色彩规范 (Colors)

* **更新时间**: 2026-07-11

为了摆脱低端 AI 生成的廉价感，ProductPilot 拒绝使用纯红、纯绿或饱和度过高的纯蓝。我们采用一套专为专业汇报、高级暗色模式（Dark Mode）与纸张文档（Light Mode）调配的 HSL 调色板。

## 1. 核心配色方案 (Core Palette)

```css
:root {
  /* 主色调 (深邃科技蓝) - 传达专业、沉稳的产品基调 */
  --color-primary-hsl: 220, 80%, 56%; /* #2F65FF */
  --color-primary: hsl(var(--color-primary-hsl));
  
  /* 辅助主色 (青石翠) - 用于点缀、成功提示与高亮 */
  --color-secondary-hsl: 165, 85%, 40%; /* #0FB885 */
  --color-secondary: hsl(var(--color-secondary-hsl));

  /* 警示与危险色 (温暖珊瑚红) - 杜绝大片扎眼的纯红 */
  --color-danger-hsl: 350, 75%, 52%; /* #EB3E56 */
  --color-danger: hsl(var(--color-danger-hsl));

  /* 中性背景色 (暗夜星空) - 专为 TV 大屏与暗色主题设计 */
  --color-bg-dark-hsl: 222, 25%, 10%; /* #0C0F14 */
  --color-bg-dark: hsl(var(--color-bg-dark-hsl));
  
  /* 中性文字色 - 采用不晃眼的暖白色与低饱和灰 */
  --color-text-primary: hsl(210, 20%, 94%); /* #ECEFF2 */
  --color-text-secondary: hsl(210, 10%, 65%); /* #9AA5B1 */
}
```

---

## 2. 状态色与透明度规范 (States)
* **聚焦高亮状态 (Focus)**: 采用 `hsla(220, 80%, 56%, 0.15)` 作为高亮背景框，叠加 100% 饱和度的 Primary border。
* **禁用与置灰状态 (Disabled)**: 统一使用 `opacity: 0.35` 灰显，确保文字仍保持可读性底线，但视觉重心明显下沉。
* **渐变规范**: 推荐使用双色微渐变（如：从 `#2F65FF` 渐变至 `#1A4CE0`），在大屏幕上展示可编辑形状时更有质感。
