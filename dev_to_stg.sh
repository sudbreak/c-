#!/bin/bash
git checkout stg
git merge dev -m "Merge from dev $(date +'%Y-%m-%d %H:%M:%S')"
git tag -a "stg-$(date +'%Y%m%d%H%M%S')" -m "Release to staging"
git push origin stg --tags
git checkout dev
