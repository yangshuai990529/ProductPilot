# 模板 - AI 产品方案模板 (AI Product Proposal Template)

## 1. 使用场景
本模板适用于涉及大语言模型（LLM）调用、智能 Agent 开发、多 Agent 协作系统架构以及 RAG 向量知识库集成的 AI 产品立项评审。

## 2. 页面与章节结构

### 2.1 必选页面/章节
1. **AI 引入背景与商业收益 (Why AI)**:
   - 为什么要使用 AI 技术？使用 AI 相比传统规则算法能提升多少效率或节约多少人力？
2. **Agent 架构设计 (Agent Architecture)**:
   - 明确各 Agent 的角色定位（Persona）、输入边界、可以调用的工具集（Tools）及短期/长期记忆管理。
3. **提示词工程与样本设计 (Prompt Design)**:
   - 结构化的 System Prompt、用于冷启动的少样本示例（Few-Shot Examples）。
4. **防泄露与降级策略 (Safety & Guardrails)**:
   - 预防恶意越狱与注入攻击的安全机制，以及模型超时或不可用时的 Fallback 本地兜底方案。

### 2.2 可选页面/章节
- 向量切片规则（Chunking Strategy）设计、大模型效果评估（Evaluation Metric）打分矩阵。

## 3. 推荐表达图表
- 使用 **系统架构图** 展现 RAG 数据流与 Agent 协作链。
- 使用 **状态机转移图** 展现 Agent 思考规划（Planning）与工具调用循环（ReAct Loop）。

## 4. 输出检查列表 (Checklist)
* [ ] 是否包含了详细脱敏的 System Prompt 结构？
* [ ] 是否规划了防越狱与防幻觉兜底策略？
* [ ] API 调用成本估算与延迟（Latency）是否在可接受范围内？
