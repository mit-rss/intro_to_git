#!/usr/bin/env bash
set -eE

trap 'Error! Could not run bot' ERR

MYREMOTE="$(git config --get remote.origin.url)"

if [ ! -d ~/Downloads/.rss_bot ]; then
	mkdir ~/Downloads/.rss_bot
	cd ~/Downloads/.rss_bot || rm -rf ~/Downloads/.rss_bot
	echo "[bot] I am cloning the repo from ${MYREMOTE}..."
	git clone "${MYREMOTE}" rss_lab1 --quiet
fi

# cd into cloned repo
cd rss_lab1

echo "[bot] Making some changes in my local copy..."
python random_file_generator.py 
git add --all

echo "[bot] Going to commit now"
git commit -m "The bot is committing random changes" --quiet
git push --quiet
rm -rf ~/Downloads/.rss_bot
echo "[bot] Ok, done, I pushed my work to ${MYREMOTE}!"

