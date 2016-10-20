#!/usr/bin/env bash
# CRON Job run at startup & Daily 0 4 * * * daily.sh

# Start Time Logged
echo ""
echo "Start time" >> ../time.log
date >> ../time.log

# Any changes stored in .git will be removed
cd ~/TRACE || exit

git fetch
git checkout master

git clone https://github.com/utkdigitalinitiatives/TRACE.git tmp
rm -rf .git
mv tmp/.git .git
rm -rf tmp

git checkout -b Sprint-#5 origin/Sprint-#5
git reset --hard Sprint-#5
# git reset --hard origin/master

git pull

# Update Vagrant Box before a reboot/rebuild
cd ~/TRACE || exit
vagrant box update

# Rebuild Vagrant Regardless of changes & output results to log
vagrant destroy -f
vagrant up > ../vagrant.log

# Log time the script completed
echo "- Script Exited" >> ../time.log
date >> ../time.log
