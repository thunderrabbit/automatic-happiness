#!/bin/bash

cd ~/mt3.com/scripts/go

go run my_uploads.go oauth2.go errors.go

cd ~/mt3.com

hugo

rsync -qavz --delete ~/mt3.com/public/ mt3:marbletrack3.com
