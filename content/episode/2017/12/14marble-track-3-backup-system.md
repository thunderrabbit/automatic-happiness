---
title: "Marble Track 3 backup system"
tags: [ "mt3", "backup" ]
author: Rob Nugen
draft: true
episode_image: https://b.robnugen.com/art/marble_track_3/website/2018_sep_02_mt3_placeholder.png
date: 2017-12-14T10:32:48+09:00
---

## 10:32 Thursday 14 December 2017 JST

'far as I can tell, I have not yet documented how I back up Marble
Track 3 data.

    boto-rsync   --endpoint objects-us-west-1.dream.io . s3://mt3/mt3

But to be clear, I have not confirmed the restore functionality!

I guess it would be

    boto-rsync   --endpoint objects-us-west-1.dream.io s3://mt3/mt3 .

but are there keys required?  Let's just check.

    cd ~
    mkdir mt3restore
    cd mt3restore
    boto-rsync   --endpoint objects-us-west-1.dream.io s3://mt3/mt3 .

Does that work for you?  It works for me! I don't remember how I set
up boto-rsync, but it probably wasn't too hard.
