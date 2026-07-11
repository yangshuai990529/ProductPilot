# 知识库 - 屏幕校准 (Calibration) 标准工作流

* **版本状态**: Active
* **适用范围**: 高端智能电视、画质显示器与专业投影仪
* **数据来源**: ISF 认证基准、Calman 自动校准 (AutoCal) 指南
* **更新时间**: 2026-07-11

## 核心定义
**屏幕校准（Calibration）** 是指通过专用的色度计（Colorimeter）或光谱仪（Spectroradiometer）测量显示设备输出的实际色彩，并调整背光、白平衡（White Balance）与三维色彩管理系统（3D LUT），使其无限逼近行业标准画质规格（如 D65 标准光源、BT.709 或 BT.2020 色域）的调校过程。

## 标准校准工作流步骤

```mermaid
flowchart LR
  A[环境准备] --> B[暗场基调]
  B --> C[两点白平衡]
  C --> D[多点灰阶调校]
  D --> E[CMS色彩校正]
  E --> F[验证与锁定]
}
```

1. **环境与设备准备**：
   - 电视预热至少 30 分钟以上，以确保面板发光趋于稳定。
   - 调校环境光线低于 5 lux（暗室）。
2. **确定暗场基调 (Pre-setting)**：
   - 锁定目标伽马曲线（SDR 下通常推荐 Gamma 2.2 或 BT.1886）。
   - 将背光亮度调至目标亮度值（如 SDR 100 nits 或 120 nits）。
3. **两点白平衡调校 (2-Point White Balance)**：
   - 调整 30% 灰阶（RGB 偏置 Offset/Cutoff）与 80% 灰阶（RGB 增益 Gain），快速修正高光和暗场中的色彩偏红或偏蓝。
4. **多点灰阶与伽马调校 (Multi-point Gray Scale)**：
   - 使用 10 点或 20 点灰阶调节，逐点消除各亮度级别的 RGB Delta E（色差）偏差，确保 Delta E <= 2。
5. **色彩管理系统校正 (Color Management System，CMS)**：
   - 针对红、绿、蓝（三原色）及青、品、黄（三辅助色）的色相（Hue）、饱和度（Saturation）和亮度（Luminance）进行三维微调。
6. **验证与出厂锁定**：
   - 重新跑一遍测试色卡，验证整体平均 Delta E 是否小于 1.5。
   - 将校准数据写入 SoC 的非易失性存储器（EEPROM），防止用户恢复出厂设置时丢失数据。
