!/bin/bash
fecha=$(date +"%m-%d-%Y-%T")
cd /home/respaldo/liriodemar/
cp -R /var/www/liriodemar/ liriodemar$fecha
cd /var/www/
rm -rf liriodemar
cp -R /home/froldan/ liriodemar
chown -R apache.apache /var/www/liriodemar/
chmod -R 755 /var/www/liriodemar/
/etc/init.d/httpd stop
/etc/init.d/httpd start
