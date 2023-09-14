#!/usr/bin/env bash

set -e

make clean dwm

rm ~/.dwm/dwm

cp ./dwm ~/.dwm/dwm