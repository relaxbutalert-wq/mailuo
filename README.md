# MathPath · GitHub Pages

一个自包含、零依赖（无 CDN、无构建）的数学知识图谱产品原型，可一键部署到 GitHub Pages。内部品牌 **MathPath**（去学段化，可扩展到小学 / 高中 / 大学）。

## 内容

- `index.html` —— 完整工具（顶栏 / 首页 / 三栏 / 浏览-编辑双模式 / 搜索路径高亮 / 年级·模块筛选 / 掌握状态 / 路径推荐与发光动画 / 导入导出 PNG·SVG·JSON / 聊天式 AI 助教 / 项目说明作品集页）。
- `.nojekyll` —— 关闭 Jekyll 处理，确保页面原样托管。
- `deploy.sh` —— 一键建仓库 + 推送 + 开启 Pages（需要本地已安装并登录 `gh`）。

## 部署（本地，已登录 gh）

```bash
cd deploy-github-pages
bash deploy.sh
```

脚本会：创建公开仓库 `mathpath` → 提交 `index.html` → 推送到 `main` → 开启 GitHub Pages（分支 `main`，根目录）。

## 线上地址（已部署）

🔗 https://relaxbutalert-wq.github.io/mathpath/

仓库 `relaxbutalert-wq/mathpath`（公开，分支 `main`，根目录）。

## 绑定独立域名（推荐）

1. 在注册商（Cloudflare Registrar / Namecheap）购买 `mathpath.app`。
2. 在仓库 Settings → Pages → Custom domain 填入 `mathpath.app`，GitHub 会要求添加一条 `CNAME` 记录。
3. 在 DNS 处添加：`mathpath.app` → CNAME → `relaxbutalert-wq.github.io.`（用 Cloudflare 时开启橙色云代理）。
4. 等待 HTTPS 证书签发（约数分钟~1 天）。
完成后简历里即可放简洁网址 `mathpath.app`。

## 重新部署 / 更新内容

修改 `index.html` 后：

```bash
cd deploy-github-pages
git add -A && git commit -m "update" && git push
```

约 1 分钟后站点自动刷新。

## 备注

- 文件完全自包含，也可直接拖到任意静态托管（Netlify / Vercel / Cloudflare Pages / EdgeOne）。
- 本次通过经典 Token 临时部署；Token 用后已可撤销（GitHub → Settings → Developer settings → Personal access tokens）。
