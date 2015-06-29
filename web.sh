#!/bin/bash

if [ "$WORKER_DEPLOYMENT" == "true" ]; then
  .meteor/heroku_build/bin/node .meteor/heroku_build/app/main.js
else
  env DISABLE_WORKER=true .meteor/heroku_build/bin/node .meteor/heroku_build/app/main.js
fi

#idea taken from https://techtime.getharvest.com/blog/deploying-multiple-heroku-apps-from-a-single-repo