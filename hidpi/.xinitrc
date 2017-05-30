#!/bin/bash

xrdb ~/.Xresources
xrdb -m ~/.Xresources.d/dpi

xrandr --dpi 192
GDK_DPI_SCALE=1
