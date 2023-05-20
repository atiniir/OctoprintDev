# Octoprint Dev

<https://hub.docker.com/r/octoprint/octoprint>
<https://github.com/OctoPrint/octoprint-docker/blob/master/docker-compose.yml>
<https://docs.octoprint.org/en/master/configuration/config_yaml.html>
<https://docs.octoprint.org/en/master/plugins/gettingstarted.html>
<https://docs.octoprint.org/en/master/plugins/index.html>

## After container starts (if freshy fresh)

- from `/root/plugins/plugin-name`
  - `python setup.py develop`
  - `octoprint dev plugin:install`
- then restart octoprint

the devcontainer setup calls the setup.py and plugin install using `postStartCommand` invoke of `install.sh`

you can use `restart.sh` to restart octoprint without having to go to the UI

## To recreate users.yaml or reset password

- delete existing file
- in `config\config.yaml` change `server:firstRun: false` to `true`

## Notes

- can set user to default bash (or other) shell, but docker desktop always runs /bin/sh
- only the minimal image has the octoprint user, other tags don't
  - <https://github.com/OctoPrint/octoprint-docker/blob/master/docs/using_the_minimal_image.md>
  - tried using this but then mounting the config files became a headache cuz they were root owned
  - so i'm just using the base image and doing things as root like a rockstar
- created dockerfile to add customizations
  - install vi, bash, etc
  - add `pip install "cookiecutter>=1.4,<1.7"`
- when i tried (Oct 11 2022) using the latest image i got the prompt to upgrade octoprint, even though it said it was already running 1.8.4
- checked today (oct 11) and the config and user yamls seem to be working proper
- devcontainer setup with helper .sh scripts
