#!/usr/bin/env bash
set -eE

trap 'echo "Error! Could not run bot"' ERR

MYREMOTE="$(git config --get remote.origin.url)"

MYTMPDIR=`mktemp -d 2>/dev/null || mktemp -d -t 'rssbot'`

if [ ! -d $MYTMPDIR ]; then
    echo "fatal error: call a TA"
    exit 1
fi

cd $MYTMPDIR
echo "[bot] I am cloning the repo from ${MYREMOTE}..."
git clone "${MYREMOTE}" rss_lab1 --quiet

# cd into cloned repo
cd rss_lab1

echo "[bot] Making some changes in my local copy..."
python random_file_generator.py 
git add --all

echo "[bot] Going to commit now"
git commit -m "The bot is committing random changes" --quiet
git push --quiet
rm -rf $MYTMPDIR
echo "[bot] Ok, done, I pushed my work to ${MYREMOTE}!"
