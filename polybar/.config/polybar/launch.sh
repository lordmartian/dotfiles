#!/bin/bash

# terminate running instances
killall -q polybar

# start default bar
polybar default &

