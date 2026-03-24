---
title: "Selectively deploy files in a folder to IPFS using a bash script"
date: 2026-03-24T15:10:52-07:00
draft: false
---
## Introduction

With some of the really basic websites I have been working on lately there are no builds so there is no `/public` or `/dist` that gets generated, that would normally be recursively deployed. I still wanted a way to selectively deploy only the required files to IPFS using a script. So I modified one of my standard deployment scripts, and using some guidance from AI, I developed this approach that works.

## How to run this deployment script?

### Update the following information relevant to your project deployment needs:

1. Copy this script and place in a file named `deploy.sh`

2. Update the `SELECTED_FILES=("index.html" "app.js" "styles.css")` to include all the files to deploy.

3. Update the `--name` line to match your website's name --name "Your WebPage Name should go here instead"

4. Update permissions for the deployment script.

    ```
    chmod +x deploy.sh
    ```

5. Run the script `./deploy.sh`

When the script concludes running successfully it will display output something like the following:

```
Attempting to add selected files to IPFS cluster...
Successfully added selected files.
Received public hash of: QmZAMWSxVUngbyaaPVLscfN3eo2Yh1LtSTfN7DmbkHpECy
```

## The Script example deploy.sh
```bash
#!/bin/bash

# Define the list of files to include (only these)
SELECTED_FILES=("index.html" "app.js" "styles.css")

# Validate that all selected files exist
for file in "${SELECTED_FILES[@]}"; do
if [ ! -f "$file" ]; then
echo "Error: File '$file' not found!" >&2
exit 1
fi
done

echo "Attempting to add selected files to IPFS cluster..."

# Use ipfs-cluster-ctl to add the selected files
PUBLIC_HASH=$(ipfs-cluster-ctl add "${SELECTED_FILES[@]}" --name "Your WebPage Name should go here instead" --metadata type=website -Q)

if [ $? -ne 0 ]; then
echo "Add to IPFS Cluster failed!"
exit 2
fi

echo "Successfully added selected files."
echo "Received public hash of: $PUBLIC_HASH"
```