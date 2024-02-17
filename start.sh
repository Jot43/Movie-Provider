if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jot43/Movie-Provider.git /Movie-Provider
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Provider
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting Movie-Provider...."
python3 bot.py
