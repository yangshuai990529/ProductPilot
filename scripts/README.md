# ProductPilot 自动化脚本

本目录包含保障本仓库质量与安全的开发自检脚本。

## 脚本目录结构

```
scripts/
├── README.md               # 本文档
└── check_repo.sh           # 完整性自检与敏感信息防泄漏扫描脚本
```

## 执行流程

在推送任何代码到远程仓库前，团队成员必须运行：

```bash
bash scripts/check_repo.sh
```

若脚本输出中有任何 `Blocker` 标识的报错（如敏感 Token 泄漏、关键文件缺失），Git 提交将自动中止。
