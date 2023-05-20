# https://hub.docker.com/r/octoprint/octoprint
FROM octoprint/octoprint:1.8.7

ENV TZ="Etc/UTC"

RUN apt-get update; apt install -y\
 bash \
 git \
 curl \
 jq \
 unzip \
 wget \
 vim \
 sqlite3

RUN python -m pip install --upgrade pip

RUN pip install "cookiecutter>=1.4,<1.7"

## strftime(3) ref for date (\D) formatting https://man7.org/linux/man-pages/man3/strftime.3.html 
ENV PS1="\D{%Y-%m(%b)-%d} \u [\w]$ "

### previously when using the minimal image and trying to work as octoprint i had stuff like... 
### but using this with the non-minimal image doesnt' work, the compose bails

# FROM octoprint/octoprint:1.8.4-minimal
# RUN usermod --shell /bin/bash octoprint
# USER octoprint

## in the docker-compose i had 
# user: "octoprint:octoprint"
## also just for reference octoprint user info: 
# uid=1000(octoprint) gid=1000(octoprint) groups=1000(octoprint),20(dialout)

