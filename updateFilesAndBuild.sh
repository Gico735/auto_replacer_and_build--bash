#!/bin/bash
path=${1//"/app"/""}
origin="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo $path
yes | cp -rf ./updatedFIles/core.js $path/app/core/js/core.js;
yes | cp -rf ./updatedFIles/nav.js $path/app/blocks/nav/nav.js;
yes | cp -rf ./updatedFIles/layout.js $path/app/blocks/layout/layout.js;
yes | cp -rf ./updatedFIles/menuSlides $path/app/blocks/;
yes | cp -rf ./updatedFIles/logos $path/app/blocks/logos;
yes | cp -rf ./updatedFIles/scripts.jade $path/app/blocks/scripts/scripts.jade;
yes | cp -rf ./updatedFIles/iscroll.js $path/app/scripts/iscroll.js

yes | cp -rf ./updatedFIles/presentation.jade $path/app/presentation.jade;

yes | cp -rf ./updatedFIles/default.js $path/gulp/tasks/default.js;
yes | cp -rf ./updatedFIles/copy.js $path/gulp/tasks/copy.js;
yes | cp -rf ./updatedFIles/inlineScenAndContent.js $path/gulp/tasks/inlineScenAndContent.js;
yes | cp -rf ./updatedFIles/jade.js $path/gulp/tasks/jade.js;
cd $path && npm start && npm run zip && cp ./zip/* $origin/READY_ZIP