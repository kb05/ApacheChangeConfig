#!/bin/sh 
apacheSitesEnabledPath='/etc/apache2/sites-enabled';
apacheSitesAvailablePath='/etc/apache2/sites-available';

for i in $(ls -1 $apacheSitesAvailablePath); do sites="$sites $i"; done

selectedSite=$(zenity --list   --title="Choose Apache config"  --column= $sites);

echo $selectedSite;

if [ ! -z "$selectedSite" ];then 
	cd $apacheSitesAvailablePath;
	sudo a2dissite *;
	sudo a2ensite $selectedSite;
	ls $apacheSitesEnabledPath;
	sudo service apache2 restart;
	sleep 2; #to see the change a few moments
fi
