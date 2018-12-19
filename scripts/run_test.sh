#!/bin/bash

pub get
pub run build_runner test -- -p chrome

dartanalyzer --lints --package-warnings web/main.dart | tee lint.log
if grep '^  warning ' lint.log; then
  echo "========================================================="
  echo "            WARNINGS DETECTED (Failing build)"
  echo "========================================================="
  grep '^  warning ' lint.log
fi