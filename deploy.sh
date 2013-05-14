#!/bin/sh
cd `dirname $BASH_SOURCE`
HOST="ftp.kabaretmusic.fr"
USER=kabaretm
PASSWORD=`security find-generic-password -l "$HOST" -g 2>&1 | grep "password" | cut -d \\" -f 2`
echo "cd www\nmput .htaccess\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST
echo "cd www\nmkd img\ncd img\nlcd img\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST
echo "cd www\nmkd icomoon\ncd icomoon\nlcd icomoon\nmput style.css\nmkd fonts\ncd fonts\nlcd fonts\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST