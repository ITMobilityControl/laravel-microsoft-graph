#!/bin/sh

CHANGED=`git diff HEAD@{1} --stat -- ./composer.lock | wc -l`
if [ $CHANGED -gt 0 ];
then
    printf "\033[33m⚠ Warning: composer.lock has changed. Update now with composer install. ⚠\033[0m\n"
fi
