#!/bin/bash
git add .
echo "write a commit message"
read commit_message
git commit -m "$commit_message"
git push odoo-dev master-self_ordering_for_restaurant-vlst
