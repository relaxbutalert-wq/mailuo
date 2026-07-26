#!/usr/bin/env bash
# 一键部署「初中数学知识路径图」到 GitHub Pages
# 前置：本地已安装并登录 gh（gh auth login），且对目标账号有建仓权限。
set -e

USER="relaxbutalert-wq"
REPO="junior-math-knowledge-map"

cd "$(dirname "$0")"

# 1) 建公开仓库（已存在则忽略）
gh repo create "$REPO" --public --description "初中数学知识路径图 · 知识路径可视化工具" 2>/dev/null || \
  echo "（仓库已存在或跳过创建，继续推送）"

# 2) 初始化并提交
git init -q
git add -A
git commit -qm "init: 初中数学知识路径图 (self-contained, zero-dependency)" 2>/dev/null || git commit -qm "update" 
git branch -M main

# 3) 关联远程并推送
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "git@github.com:$USER/$REPO.git"
else
  git remote add origin "git@github.com:$USER/$REPO.git"
fi
git push -u origin main

# 4) 开启 GitHub Pages（分支 main，根目录）
gh api repos/"$USER"/"$REPO"/pages -X POST \
  -f branch=main \
  -f source='{"branch":"main","path":"/"}' >/dev/null 2>&1 || \
  echo "（Pages 可能需到仓库 Settings → Pages 手动选择分支 main）"

echo ""
echo "✅ 部署完成！稍等 1 分钟，访问："
echo "   https://$USER.github.io/$REPO/"
