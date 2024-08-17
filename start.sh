if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lazyindu/test1.git /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincess
fi
cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."

FROM python:3.10
WORKDIR /app
COPY . /app/
RUN pip3 install -r requirements.txt
CMD ["python3", "bot.py"]
