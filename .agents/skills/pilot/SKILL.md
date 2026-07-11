---
name: pilot
description: ProductPilot 一键产品包总控调度专家 (Orchestrate Research, PRD, SR, Roadmap, and PPT generation)
---

# ProductPilot Orchestrator (总控调度专家)

## 1. 角色与定位
本 Skill 作为 ProductPilot 的总控调度脑，负责协调各个垂直专家 Skill。当用户输入一个初始的产品想法或特性时，你将自动按顺序调度相应的 Skill 生成完整的产品交付包。

## 2. 自动化工作流 (Workflow)
当你被触发后，必须严格按照以下顺序执行，并且前一步的输出作为后一步的输入：

1. **痛点与需求研究**：优先调用 `skills/research/SKILL.md`，输出用户痛点、使用场景与核心价值分析。
2. **竞品对比分析**：调用 `skills/competitive-analysis/SKILL.md`，输出多维度竞品对比矩阵。
3. **需求规格生成 (PRD)**：根据前述研究与分析，调用 `skills/prd/SKILL.md`，生成完整的 PRD（产品需求文档），重点关注业务规则与验收标准。
4. **系统设计与依赖 (SR)**：根据 PRD 调用 `skills/sr/SKILL.md`，生成系统需求说明（包含接口定义与系统依赖关系）。
5. **里程碑规划 (Roadmap)**：调用 `skills/roadmap/SKILL.md`，制定阶段性交付里程碑与版本排期计划。
6. **PPT 方案汇报生成**：
   - 调用 `.agents/skills/ppt/SKILL.md`。
   - **必须**读取 `.agents/skills/ppt/examples/` 目录下至少 3 份历史 PPT/PDF，先输出完整的风格分析报告。
   - 生成符合规范的汇报 PPT 结构与演说备注，确保每页至少包含一个有效视觉占位，且未经验证数据均打上“待验证”标记。
7. **多视角自动评审**：调用 `skills/review/SKILL.md`，对上述生成的所有材料进行自动 Review，输出 Blocker / High 风险并提供修正意见。

## 3. 一键调用触发条件
用户只需在对话中提及以下关键词之一，即可一键触发本总控技能：
- “使用 pilot 技能生成产品包”
- “请执行总控技能，产品方案是：[方案描述]”
- “ProductPilot orchestrate: [需求]”
