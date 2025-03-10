#!/bin/bash

set -x  # Enable debugging mode
set -e  #Stops script execution if any command returns a non-zero exit status (error).
set -o pipefail 
        #Enables or disables various shell options to modify script behavior.
        #set -o pipefail → Detects failure in pipeline commands.
	#set -exo pipefail This enables all three options at once
	

echo "Starting script..."

# Print the current date and time
date

# List files in the current directory
ls -l

# Show the number of CPU cores
echo "CPU Cores: $(nproc)"

# Show memory usage in GB
free -g

# Show disk space usage in human-readable format
df -h

set +x  # Disable debugging mode

echo "Script completed."

