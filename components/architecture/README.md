# 组件 - 系统架构图 (Architecture Diagram Component)

本组件用于定义与展现产品架构拓扑结构，便于理清应用层、协议层、硬件底层的数据交互关系。

## 1. Mermaid 架构图模板

```mermaid
graph TD
  subgraph 表现层 (Presentation Layer)
    A[TV 大屏客户端]
    B[移动端 App]
  end

  subgraph 业务逻辑与网关 (Business & Gateway)
    C[API 统一网关]
    D[鉴权中心]
    E[内容分发系统]
  end

  subgraph 硬件与底层驱动 (Hardware & Drivers)
    F[画质处理引擎]
    G[Wi-Fi 射频控制]
  end

  A -->|HTTPS / API| C
  B -->|HTTPS / API| C
  C -->|Token 校验| D
  C -->|检索数据| E
  E -->|调用驱动接口| F
  E -->|网络状态查询| G
```

## 2. 设计规范
* 模块划分必须清晰，采用 `subgraph` 划分边界层级。
* 组件关系线条必须标注核心的数据协议（如 HTTPS / API）。
