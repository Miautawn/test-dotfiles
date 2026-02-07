#!/bin/bash

# 1. Get the path to your chezmoi source repository
# This is automatically populated by chezmoi
cd $CHEZMOI_SOURCE_DIR

# 2. Check if the current remote is HTTPS
CURRENT_URL=$(git remote get-url origin)

if [[ $CURRENT_URL == https://github.com* ]]; then
    echo "Chezmoi detected HTTPS remote. Switching to SSH..."
    
    # 3. Convert the HTTPS URL to an SSH URL
    # This turns https://github.com/user/repo.git into git@github.com:user/repo.git
    NEW_URL=$(echo $CURRENT_URL | sed 's|https://github.com/|git@github.com:|')
    
    git remote set-url origin "$NEW_URL"
    echo "Chezmoi remote updated to: $NEW_URL"
fi
