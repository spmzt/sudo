#!/bin/sh

# Where is the sudoers directory?
if [ -d /etc/sudoers.d/ ]; then
	export SUDOERS_DIR="/etc/sudoers.d/"
elif [ -d /usr/local/etc/sudoers.d/ ]; then
	export SUDOERS_DIR="/usr/local/etc/sudoers.d/"
else
	echo "Unable to find sudoers directory to add our sudoers policies."
	exit 1
fi

# Add our policies to it
cp ./sudoers.d/* $SUDOERS_DIR && echo "Done. Here is our corrent sudoers directory:"
# Check the policies
ls -lhtra $SUDOERS_DIR
