#!/bin/sh
mkdir -p ~/data/shared/app/etc
mkdir -p ~/data/shared/downloader
cp -R -L -n ~/current/var ~/data/shared && rm ~/current/var
cp -R -L -n ~/current/media ~/data/shared && rm ~/current/media
cp -R -L -n ~/current/downloader/.cache ~/data/shared/downloader/.cache && rm ~/current/downloader/.cache
cp -R -L -n ~/current/app/etc/local.xml ~/data/shared/app/etc/local.xml && rm ~/current/app/etc/local.xml
cp -R -L -n ~/current/downloader/cache.cfg ~/data/shared/downloader && ~/current/downloader/cache.cfg
cp -R -L -n ~/current/downloader/connect.cfg ~/data/shared/downloader && ~/current/downloader/connect.cfg
ln -s ~/data/shared/var ~/current
ln -s ~/data/shared/media ~/current
ln -s ~/data/shared/app/etc/local.xml ~/current/app/etc
ln -s ~/data/shared/downloader/cache.cfg ~/current/downloader
ln -s ~/data/shared/downloader/connect.cfg ~/current/downloader
return 0