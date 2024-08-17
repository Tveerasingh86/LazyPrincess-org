if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository" 
  git clone https://github.com/lazyindu/test1.git /LazyPrincess
else
  echo "Cloning Custom Repo from $STREAM_REPO "
  git clone $UPSTREAM_REPO LazyPrincess
fy
cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
