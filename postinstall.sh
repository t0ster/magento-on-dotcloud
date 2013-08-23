#!/bin/sh
mkdir -p ~/data/shared
mv -n ~/current/var ~/data/shared
mv -n ~/current/media ~/data/shared
mv -n ~/current/downloader/.cache ~/data/shared/downloader
mv -n ~/current/app/etc/local.xml ~/data/shared/app/etc/local.xml
mv -n ~/current/downloader/cache.cfg ~/data/shared/downloader
mv -n ~/current/downloader/connect.cfg ~/data/shared/downloader
ln -s ~/data/shared/var ~/current
ln -s ~/data/shared/media ~/current
ln -s ~/data/shared/downloader/.cache ~/current/downloader
ln -s ~/data/shared/app/etc/local.xml ~/current/app/etc
ln -s ~/data/shared/downloader/cache.cfg ~/current/downloader
ln -s ~/data/shared/downloader/connect.cfg ~/current/downloader
return 0