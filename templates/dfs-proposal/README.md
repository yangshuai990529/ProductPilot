# 模板 - DFS 与 Wi-Fi 规格方案模板 (DFS & Wi-Fi Proposal Template)

## 1. 使用场景
本模板适用于支持无线连接的智能终端进行 5GHz 频段 DFS 避让逻辑设计、国家码频段兼容以及射频准入规格定义。

## 2. 页面与章节结构

### 2.1 必选页面/章节
1. **无线网络频段规格 (RF Specification)**:
   - 支持的 Wi-Fi 协议版本（Wi-Fi 5/6/7）、最大空间流数、国家码对应的信道分配图表。
2. **雷达探测与避让逻辑 (Radar Detection & Avoidance)**:
   - 设备在 DFS 信道上的 CAC 检测流程、检测到雷达后的 Channel Move 与 Channel Closing 发射时限判定。
3. **雷达非占用期 (NOP) 锁定策略**:
   - 如何在 30 分钟内防止二次误触雷达，断电或重启后信道锁定状态如何恢复与维持。
4. **国家认证合规自检 (Compliance Standard)**:
   - 对齐中国 SRRC、美国 FCC 和欧洲 CE 的 DFS 雷达脉冲测试大纲。

### 2.2 可选页面/章节
- 弱网环境下的双频合一（Band Steering）自适应切换规则。

## 3. 推荐表达图表
- 使用 **状态机图 (State Diagram)** 描述 CAC -> Operating -> NOP 转移路线。
- 使用 **信道划分对比图** 展现多国认证信道差异。

## 4. 输出检查列表 (Checklist)
* [ ] 雷达检测触发后，信道移动时间（<= 10s）是否满足硬性标准？
* [ ] 30 分钟 NOP 锁定状态如何防止用户通过手动重启绕过？
* [ ] 内核日志（Kernel Log）格式是否遵循标准调试规范？
