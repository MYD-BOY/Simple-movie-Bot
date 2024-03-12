if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Maheshbox/Simple-movie-Bot.git /Simple-movie-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Simple-movie-Bot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Simple-movie-Bot...."
python3 bot.py
