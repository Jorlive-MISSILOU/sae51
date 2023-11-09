#/bin/bash

sed s/settings?.headercolor/settings.headercolor/ /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js > correctionjs
cp correctionjs /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js
rm correctionjs