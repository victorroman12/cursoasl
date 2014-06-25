#!/bin/bash
fecha=$(date +"%m-%d-%Y-%H-%M")
mkdir -p /var/www/respaldo$fecha
cp -R /var/www/debian/ /var/www/respaldo$fecha

