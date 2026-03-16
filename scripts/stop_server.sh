#!/bin/bash
isExistHttpd="$(pgrep httpd)"
if [[ -n $isExistHttpd ]]; then 
    sudo systemctl stop httpd.service
fi
isExistTomcat="$(pgrep tomcat)"
if [[ -n $isExistTomcat ]]; then
    sudo systemctl stop tomcat.service
fi

