# What I'm Planning

> This file shouldn't be merged back to the main repo in a PR or MR

## Basics

- [x] Get the plugin to load in development environment
- [x] Where is the queue stored? = (self.get_plugin_data_folder(),"queue.db")
- [x] Where is get_plugin_data_folder? = in settings folder (usually ~/.octoprint) in devcontainer env it's /octoprint/octoprint/data/queue/queue.db
- [x] Can I pre-load the queue on devcontainer startup, for testing = YES
  - can use `sqlite3 -init /workspace/test_data/basic.sql /octoprint/octoprint/data/queue/queue.db`
  - .open /octoprint/octoprint/data/queue/queue.db
  - .read /workspace/test_data/basic.sql
- [x] How to add logging for the plugin from js, where to see the logs
  - added custom log 'plugin_queue_queue.log' for easier log finding
  - can use console.log or log.info in js to see in browser console, not recorded to server (obvs)
- [ ] Add logging for load file to help troubleshoot

## Features

- [ ] Filename picker
- [ ] Make staff, customer, contact, cost, paid optional
- [ ] Enable reordering the Q
- [ ] Add to Q from filemanager
- [ ] Configure columns displayed
- [ ] Add sidebar view of Q

## Fixes

- [ ] Load file button doesn't work
- [ ] Investigate warning octoprint.plugins.queue - WARNING - The Blueprint of this plugin is relying on the default implementation of is_blueprint_csrf_protected (newly added in OctoPrint 1.8.3), which in a future version will be switched from False to True for security reasons. Plugin authors should ensure they explicitly declare the CSRF protection status in their BlueprintPlugin mixin implementation. Recommendation is to enable CSRF protection and exempt views that must not use it with the octoprint.plugin.BlueprintPlugin.csrf_exempt decorator.

## Completed

- [x] Ordering the categories in settings UI doesn't work
  - <https://github.com/chennes/OctoPrint-Queue/pull/11>
