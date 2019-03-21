#!/bin/bash

xvfb-run -a --server-args="-screen 0 ${SCREEN_RES}" node_modules/karma/bin/karma start karma.conf.js --single-run $@
