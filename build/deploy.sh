#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git config user.name 'y1huachen'
git config user.email '2773433112@qq.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:y1huachen/vue-design.git elegant:gh-pages

cd -