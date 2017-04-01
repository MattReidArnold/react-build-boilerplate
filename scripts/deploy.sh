rm -rf __deployme
mkdir __deployme

sh scripts/build.sh

node_modules/.bin/uglify -s bundle.js -o __deployme/bundle.js

node_modules/.bin/cssshrink bundle.css > __deployme/bundle.css

cp index.html __deployme/index.html
cp -r images/ __deployme/images/

date; echo;