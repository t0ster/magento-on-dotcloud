#!/bin/sh
mkdir shared
mv current/var shared
mv current/downloader/.cache shared/downloader
mv current/app/etc/local.xml shared/app/etc/local.xml
mv current/downloader/cache.cfg shared/downloader
mv current/downloader/connect.cfg shared/downloader
ln -s ../../shared/var current
ln -s ../../shared/downloader/.cache current/downloader
ln -s ../../shared/app/etc/local.xml current/app/etc
ln -s ../../shared/downloader/cache.cfg current/downloader
ln -s ../../shared/downloader/connect.cfg current/downloader