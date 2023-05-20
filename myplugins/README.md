# Using the development environment

## After starting devcontainer session

* Confirm you can load octoprint at <http://localhost>
* Login with oprint + usual password
  * if you forget check the `To recreate users.yaml or reset password` section in the main README.md
* Confirm plugins have been installed, if not run `./restart.sh` from vscode terminal

## Submodules for Plugins

There is a submodule with plugin code at myplugins\OctoPrint-Queue which links to the repo <https://github.com/atiniir/OctoPrint-Queue>

## Helpers

The `install.sh` and `restart.sh` scripts do what you'd expect based on the names

The `tail.sh` script will tail (with follow) all the logs in `/octoprint/octoprint/logs`

## After changing plugin code

See <https://docs.octoprint.org/en/master/plugins/concepts.html#lifecycle> for plugin development fundamentals

Either run `install.sh` to update all plugins or run `octoprint dev plugin:install` from the folder with the plugin source

## Changing Octoprint Configuration

See <https://docs.octoprint.org/en/master/configuration/index.html>

## TODO: Learning about plugins

* [ ] map features and todos for the actual stuff for the plugin to do real things
  * [ ] can look at other plugins <https://plugins.octoprint.org/>
* [ ] get familiar with the mixins <https://docs.octoprint.org/en/master/plugins/mixins.html#>
* [ ] check out the events <https://docs.octoprint.org/en/master/events/index.html#sec-events>
* [ ] some of what i'm thinking is similar to <https://plugins.octoprint.org/plugins/DeleteAfterPrint/>
