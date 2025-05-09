#!/bin/bash
git checkout stg
git merge dev -m "Merge from dev $(date +%Y-%m-%d)"
git tag -a "stg-$(date +%Y%m%d)" -m "Staging release"
git push origin stg --tags
git checkout dev
