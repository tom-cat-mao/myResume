# myResume

个人简历仓库：LaTeX 源码 + CI 自动构建，中英双语单页简历。

- `resume.tex` / `body.tex` — 中文版入口与正文
- `resume-en.tex` / `body-en.tex` — 英文版入口与正文
- `setting.cls` + `Font/` — 样式与本地字体
- 修改简历只需编辑对应的 `body*.tex`；推送 `v*` tag 后 Actions 自动编译、校验单页、发布 Release 并更新 Pages（合并到 main 不触发任何构建）
- 发版：`git tag v1.0.0 && git push origin v1.0.0`
- 构建产物：PDF 见 Releases，在线预览见 GitHub Pages
- 本地构建：`./build.sh`（依赖 tectonic）
