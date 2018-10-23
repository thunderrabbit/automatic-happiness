#!/bin/bash

cd ~/mt3.com/scripts/go

go run call_you.go my_uploads.go oauth2.go errors.go

cd ~/mt3.com

hugo

#  This worked on Dreamhost, but not needed with Netlify (hooked into Github push)
# rsync -qavz --delete ~/mt3.com/public/ mt3:marbletrack3.com
