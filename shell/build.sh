# 清空 dist 目录中的旧文件
echo '正在清除原有 dist 文件...'
rm -rf dist/*.css

# 打包出不压缩的 CSS文件 ssy-ui.css
echo '正在生成 ssy-ui.css文件...'
npx postcss src/ssy-ui.css -o dist/ssy-ui.css -u postcss-import autoprefixer --no-map 

# 打包出被压缩的 CSS 文件 ssy-ui.min.css
echo '正在生成 ssy-ui.min.css文件...'
npx postcss src/ssy-ui.css -o dist/ssy-ui.min.css -u postcss-import autoprefixer cssnano --no-map 