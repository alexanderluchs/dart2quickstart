#!/bin/bash

pub get
pub run build_runner test -- -p chrome

dartanalyzer --lints --package-warnings --warnings web/main.dart