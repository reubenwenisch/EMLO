#!/bin/bash
set -x
# ?do
echo "Press [CTRL+C] to stop.."
sleep 5
echo "model argument is $1"
echo "image argument is $2"
python3 main.py --model $1 --image $2
# done