# 知识库 - 杜比 (Dolby Vision / Atmos) 集成规范

* **版本状态**: Active
* **适用范围**: 智能电视、条形音箱 (Soundbar)、AV 功放
* **数据来源**: 杜比实验室 (Dolby Laboratories) 官方集成规范
* **更新时间**: 2026-07-11

## 核心定义
**杜比集成规范** 是指硬件终端和应用层为了成功播放杜比视界（Dolby Vision）动态 HDR 视频及杜比全景声（Dolby Atmos）三维空间音频，必须遵循的协议握手、解码授权和防拷贝保护（HDCP）等软硬件前置配置。

## 杜比视界 (Dolby Vision) 集成要素

1. **硬件解码授权与密钥密钥 (Dolby Keys)**：
   - 主芯片（SoC）必须内置硬件级杜比解码器。
   - 生产时需向设备写入杜比专有的出厂密钥对（Dolby Keys），用于安全通道解密。
2. **HDMI 握手包配置 (VSDB)**：
   - 设备的 EDID（扩展显示标识数据）中必须包含定制的 Vendor Specific Data Block (VSDB)，声明其支持杜比视界的分辨率及最大/最小亮度。
3. **播放路由选择 (DV Profile)**：
   - **Profile 5**: 流媒体（如 Netflix, 腾讯视频）最常用的杜比视界格式，不支持 SDR 回退。如果设备不支持杜比，画面会呈现大面积严重的紫绿色偏。
   - **Profile 8**: 具备 SDR/HDR10 回退兼容性，若设备不支持杜比，可无缝降级播放 HDR10。

## 杜比全景声 (Dolby Atmos) 声道集成

* **多声道传递 (Pass-through)**: 设备通过 HDMI eARC 接口，将未解码的 Dolby TrueHD (无损) 或 Dolby Digital Plus (有损) 音频源码流直接传输给外部回音壁或功放解码。
* **物理音视频延迟对齐**: 杜比解码会增加额外的音频处理耗时，系统音视频同步（A/V Sync）偏差必须在 -15ms 至 +45ms（音频滞后于视频）内，防止音画不同步。
