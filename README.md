# myResume

个人简历仓库：LaTeX 源码 + CI 自动构建，中英双语单页简历。

- `resume.tex` / `body.tex` — 中文版入口与正文
- `resume-en.tex` / `body-en.tex` — 英文版入口与正文
- `setting.cls` + `Font/` — 样式与本地字体
- 修改简历只需编辑对应的 `body*.tex`，push 到 main 后 Actions 自动编译、校验单页并发布
- 构建产物：PDF 见 Releases（latest），在线预览见 GitHub Pages
- 本地构建：`./build.sh`（依赖 tectonic）
