#!/bin/bash
git checkout prd
git merge stg -m "Merge from stg $(date +'%Y-%m-%d %H:%M:%S')"
git tag -a "prd-$(date +'%Y%m%d%H%M%S')" -m "Release to production"
git push origin prd --tags
git checkout dev
