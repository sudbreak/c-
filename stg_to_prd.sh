#!/bin/bash
git checkout prd
git merge stg -m "Merge from stg $(date +%Y-%m-%d)"
git tag -a "prd-$(date +%Y%m%d)" -m "Production release"
git push origin prd --tags
git checkout dev
