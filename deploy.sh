#!/bin/sh
HOST="ftp.kabaretmusic.fr"
USER=kabaretmusic
PASSWORD=`security find-internet-password -l "$HOST" -g 2>&1 | grep "password" | cut -d \\" -f 2`
echo "cd www\nmput .htaccess\nmput *\n" | ftp -i ftp://$USER:$PASSWORD@$HOST
echo "cd www\nmkd img\ncd img\nlcd img\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST
echo "cd www\nmkd icomoon\ncd icomoon\nlcd icomoon\nmput style.css\nmkd fonts\nlcd fonts\nmput *\n" | ftp -i ftp://$USER:$PASSWORD@$HOST