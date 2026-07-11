# 设计系统 - 字体与排版规范 (Typography)

* **更新时间**: 2026-07-11

为了保证生成的网页、原型及导出的 PPTX 幻灯片在不同操作系统（macOS, Windows, Linux）下均不出现字体缺失、乱码或页面错位，我们制定了以下严格的字体与排版规范。

## 1. 字体配置与降级策略 (Fallback System)

默认中文首选字体为 **PingFang SC**（平方）。当设备不支持时，必须按照以下顺序进行降级回退：

```css
font-family: "PingFang SC", "Microsoft YaHei", "Noto Sans CJK SC", "Source Han Sans SC", Arial, sans-serif;
```

### 降级要求
1. **防溢出设计**：当系统自动回退到“Microsoft YaHei（微软雅黑）”时，部分字体的物理宽度（Advance Width）会略微增加。因此，文本框宽度必须预留 **至少 15% 的宽度冗余**，以防文字发生折行或溢出。
2. **字重回退映射**：
   - `PingFang SC Regular` -> `font-weight: 400`
   - `PingFang SC Medium` -> `font-weight: 500`
   - `PingFang SC Bold` -> `font-weight: 700`

---

## 2. 文字排版行高与间距基线
* **行高 (Line Height)**:
  - 标题类文字（L1, L2, L3）默认行高设定为 **1.2 至 1.3**。
  - 正文类文字（L4, L5）默认行高设定为 **1.5 至 1.6**，确保大段中文下字里行间的透气感。
* **字间距 (Letter Spacing)**:
  - 中文字符间距建议设为 `0.02em`，以增强大屏幕上的可读性。
