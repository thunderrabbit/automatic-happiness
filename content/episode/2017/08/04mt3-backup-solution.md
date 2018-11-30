---
title: backup solution 2017
tags: [ "duplicity", "mt3", "backup", "boto-rsync" ]
author: Rob Nugen
episode_image: https://b.robnugen.com/art/marble_track_3/website/2018_sep_02_mt3_placeholder.png
date: 2017-08-04T13:53:48+09:00
---

I tried getting Cyberduck to talk to Amazon S3, but could not do it as
easily as I was able to get it to talk to Dream Objects S3.

Last time I used duplicity, I included GPG in the mix, so the files
are encrypted.  I apparently did not put the key in a safe place so they are
effectively bricked.

This time, no GPG, and I have set the files to be public (but I do not
know where / how people can access them).  Oh, and I could not get
duplicity to work.

Similar to <a
href="https://new.robnugen.com/journal/2013/05/18/using-duplicity-to-backup-marble-track-3/">using
duplicity to backup MT3</a>

    pip install boto-rsync

    cd ~/mt3
    boto-rsync   --endpoint objects-us-east-1.dream.io . s3://mt3/mt3

## 08:58 Wednesday 09 August 2017 JST

Backup complete as of a couple days ago.

I assume this will download the files:

    mkdir ~/mt3testrestore
    cd ~/mt3testrestore
    boto-rsync   --endpoint objects-us-east-1.dream.io s3://mt3/mt3 .

Let's try!

Nice.  It works.
