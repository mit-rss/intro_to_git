#!/bin/bash
MYREMOTE="$(git config --get remote.origin.url)"
if [ ! -d ~/Downloads/.rss_bot ]; then
	echo "creating directory"
	mkdir ~/Downloads/.rss_bot
	echo "cloning directory"
	cd ~/Downloads/.rss_bot || rm -rf ~/Downloads/.rss_bot
	git clone "${MYREMOTE}"
fi
echo $(pwd)
cd $(ls | head -n1)
git checkout time_agnostic
git pull 

python random_file_generator.py 
echo $(pwd)
git add --all

files="$(git status)"
git commit -m "The bot is committing random changes"
git push
rm -rf ~/Downloads/.rss_bot

