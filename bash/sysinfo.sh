#!/bin/bash
#This script will email us our username, IP, hostname, and today's date.
ip=$(ip a | grep 'dynamic ens192' | awk '{print$2}')
emailadress=pickenjr@mail.uc.edu
today=$( date +"%m-%d-%Y")
printf -v content "IP:\t%s\nHostname:\t%s\nBashVersion:\t%s\nDate:\t%s\n" $ip $HOSTNAME $BASH_VERSION $today
mail -s "IT3038C Linux IP" $emailadress <<< $(echo -e $content)
