# AGENTS

本仓库用 LaTeX 构建中英双语单页简历，CI 强制单页约束。

## 结构
- `body.tex` / `body-en.tex` — 简历正文（中/英）；改内容只动这两个文件
- `resume.tex` / `resume-en.tex` — 编译入口（姓名、联系方式）
- `setting.cls` — 样式与自定义宏；`Font/` — 本地字体
- `.github/workflows/release.yml` — tag 驱动：编译、单页校验、Release 与 Pages 部署

## 规则
- 中英文内容等长对应，数字与术语保持一致；任一语言超过 1 页构建即失败
- Release 与 Pages 仅由 `v*` tag 触发；合并到 main 不触发构建，单页校验失败则不发版
- 一律走分支 + PR 提交，不直接 push main
- 提交信息用英文、一行说完
- 不提交构建产物（PDF、中间文件）
