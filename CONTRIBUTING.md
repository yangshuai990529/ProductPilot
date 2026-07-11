# 贡献指南 (CONTRIBUTING)

感谢您关注并有意向为 ProductPilot 做出贡献！作为一个开源项目，我们欢迎从文档改进、Skill 设计到核心代码开发的各类贡献。

## 贡献工作流

1. **Fork 仓库**：在 GitHub 上 Fork ProductPilot 仓库。
2. **克隆到本地**：
   ```bash
   git clone https://github.com/<your_username>/ProductPilot.git
   cd ProductPilot
   ```
3. **创建特性分支**：
   ```bash
   git checkout -b feat/your-feature-name
   ```
4. **进行修改**：
   - 编写 Skill 时，请遵循 `skills/` 中的 `SKILL.md` 标准。
   - 编写文档或产品材料时，请严格遵守 `design-system/typography.md` 的文字层级规范。
   - 所有用户可见的文案默认必须使用**简体中文**。
5. **本地自检**：
   在提交代码前，请必须运行仓库检查脚本，确保没有任何敏感凭证泄漏且文件格式正确：
   ```bash
   bash scripts/check_repo.sh
   ```
6. **提交代码**：
   遵循 Angular Commit 规范，例如：
   - `feat: add picture quality expert skill`
   - `docs: update documentation guidelines`
7. **发起 Pull Request (PR)**：
   提交到主仓库的 `main` 分支。请在 PR 描述中详细说明修改目的与验证结果，并关联相关 Issue。

## Skill 编写规范

每个新增的 Skill 必须在 `skills/` 目录下创建独立的子目录，并且在该目录下包含一个高品质的 `SKILL.md`。

SKILL.md 必须包含以下章节：
1. Skill 名称 (Name)
2. Skill 描述 (Description)
3. 适用场景 (Applicable Scenarios)
4. 不适用场景 (Non-applicable Scenarios)
5. 角色定位 (Role Definition)
6. 输入要求 (Input Requirements)
7. 知识检索规则 (Knowledge Retrieval Rules)
8. 执行流程 (Execution Process)
9. 输出格式 (Output Format)
10. 质量检查与 Review 机制 (Quality Checks & Review)

## 敏感信息防护

请确保在贡献的代码或文档中，没有包含任何实际的 Jira/Confluence Token、大模型 API Key、内部测试环境的 URL 或企业机密产品 Roadmap。所有的示例数据应进行脱敏处理。
