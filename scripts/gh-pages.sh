npm run build-global

npm run build-examples
mkdir /tmp/react-awesome-query-builder -p
rm -rf /tmp/react-awesome-query-builder/gh-pages
mkdir /tmp/react-awesome-query-builder/gh-pages -p
cp ./examples/bundle.js ./examples/bundle.js.map /tmp/react-awesome-query-builder/gh-pages
git checkout gh-pages
cp /tmp/react-awesome-query-builder/gh-pages/* . -R
git add ./bundle.js
git add ./bundle.js.map
git commit -m "update"
git checkout master

