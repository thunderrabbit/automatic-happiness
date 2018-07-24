#!/bin/bash

cd ~/mt3.com

hugo

rsync -avz --delete ~/mt3.com/public/ mt3:marbletrack3.com
