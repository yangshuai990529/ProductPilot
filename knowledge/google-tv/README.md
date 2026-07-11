# 知识库 - Google TV 系统规范与认证标准

* **版本状态**: Active
* **适用范围**: Google TV 与 Android TV 智能大屏终端
* **数据来源**: 谷歌官方 Android Compatibility Definition Document (CDD)
* **更新时间**: 2026-07-11

## 核心定义
**Google TV** 是建立在 Android TV 操作系统之上的智能电视平台，集成了谷歌助手（Google Assistant）、谷歌应用商店及定制的推荐 Launcher。设备厂商必须通过谷歌严格的软硬件兼容性认证，才可合法搭载该系统上市。

## 核心认证标准

1. **CTS / GTS / CTS-Verifier 兼容性测试**：
   - **CTS (Compatibility Test Suite)**: 验证 Android 核心 API 的兼容性。
   - **GTS (GMS Test Suite)**: 验证谷歌服务包（GMS，包括 YouTube, Play Store）的集成兼容性。
   - **CTS-Verifier**: 涉及屏幕触控、音视频采集等需人工介入的半自动测试项。
2. **硬件最低基线要求**：
   - 内存: 4K 播放终端内存不得低于 **2.0 GB**，1080p 终端内存不得低于 **1.5 GB**。
   - 存储: 剩余可用闪存空间不得低于 **8 GB**。
   - 解码器: 必须硬件支持 VP9 Profile 2 与 AV1 解码。
3. **主页键 (Home Key) 与语音键响应规则**：
   - 按下遥控器 Home 键，系统必须在 **500ms** 内回到 Google TV 主界面，禁止任何第三方拦截该动作。
   - 语音键必须唤醒全局 Google Assistant，禁止其仅在单应用内生效。
4. **PlayReady & Widevine DRM 级别**：
   - 必须支持 Widevine L1 级硬件加密，以授权播放 Netflix 等流媒体的 4K 超高清格式。
