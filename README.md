# 初中数学知识路径图 · GitHub Pages

一个自包含、零依赖（无 CDN、无构建）的初中数学知识路径工具，可一键部署到 GitHub Pages。

## 内容

- `index.html` —— 完整工具（顶栏 / 首页 / 三栏 / 浏览-编辑双模式 / 搜索路径高亮 / 年级·模块·版本筛选 / 导入导出 PNG·SVG·JSON / AI 演示入口 / 项目说明弹窗）。
- `.nojekyll` —— 关闭 Jekyll 处理，确保页面原样托管。
- `deploy.sh` —— 一键建仓库 + 推送 + 开启 Pages（需要本地已安装并登录 `gh`）。

## 部署（本地，已登录 gh）

```bash
cd deploy-github-pages
bash deploy.sh
```

脚本会：创建公开仓库 `junior-math-knowledge-map` → 提交 `index.html` → 推送到 `main` → 开启 GitHub Pages（分支 `main`，根目录）。

## 线上地址

部署成功后：`https://<你的用户名>.github.io/junior-math-knowledge-map/`

## 备注

- 文件完全自包含，也可直接拖到任意静态托管（Netlify / Vercel / Cloudflare Pages / EdgeOne）。
- 当前 GitHub 用户名识别为 `relaxbutalert-wq`；如需改仓库名或用户名，编辑 `deploy.sh` 顶部的 `REPO` / `USER` 变量。
