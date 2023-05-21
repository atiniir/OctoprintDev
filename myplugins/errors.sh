#!/usr/bin/env bash
grep --after-context=${1-0} ERROR /octoprint/octoprint/logs/*