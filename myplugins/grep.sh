#!/usr/bin/env bash
grep ${1-ERROR} --after-context=${2-0} /octoprint/octoprint/logs/*