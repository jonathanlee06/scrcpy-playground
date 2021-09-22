#!/bin/bash

# A simple shell script to create multiple instances of scrcpy

while read sn device; do
    scrcpy -s $sn &
done < <(adb devices | sed '1d')
