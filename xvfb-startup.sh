#!/bin/bash

Xvfb :99 -ac -screen 0 "$XVFB_RES" -nolisten tcp $XVFB_ARGS &
XVFB_PROC=$!
sleep 1
export DISPLAY=:99
"$@"
EXIT_CODE=$?
kill $XVFB_PROC
exit $EXIT_CODE
