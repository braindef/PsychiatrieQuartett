#!/bin/bash

mkdir ~/.fonts
cp * ~/.fonts
fc-cache -f -v
