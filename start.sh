if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrcnu/MartinBot.git /MartinBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-search-tamil-bot
fi
cd /MartinBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
