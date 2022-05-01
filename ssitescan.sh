#!/bin/bash
clear
echo  -e "
 __  __   __  __    ___    _   ____  
|  \/  | |  \/  |  / _ \  / | |___ \ 
| |\/| | | |\/| | | | | | | |   __) |
| |  | | | |  | | | |_| | | |  / __/ 
|_|  |_| |_|  |_|  \___/  |_| |_____|

                                   [ linkedin.com/memmedrehimzade ]
                                   [ github.com :memmedrehimzade ]        [*]\033[0m\n"


host="$1"
list="$2"
string="127.0.0.1"


if [ "$host" == "" ] || [ "$list" == "" ] 
then
echo -e "\033[33mUsage: ./ssitescan.sh target.tld subs.txt\033[0m"

else
while IFS='' read -r custom_wordlist ; do

        output= host localhost.$host
        output= host $custom_wordlist
	output= host localhost.$custom_wordlist 
	output= host admin.$custom_wordlist
	output= host intranet.$custom_wordlist
	output= host internal.$custom_wordlist
	output= host internally.$custom_wordlist
	output= host staging.$custom_wordlist
	output= host status.$custom_wordlist
	output= host uat.$custom_wordlist
	
 

	echo -e "\033[91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
done < "$list"

fi
