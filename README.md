# Vagrant-as-a-Sandbox
Script to run Vagrant as a sandbox

Schedule this script to run as a cron job Daily at `0 4 * * * daily.sh`

### First download and make sure it's executable

```terminal 
$ curl -O https://raw.githubusercontent.com/DonRichards/Vagrant-as-a-Sandbox/master/daily.sh
$ chmod +x daily.sh
```

### Move it to your the user profile of the user permissions used to run the script

```terminal 
$ mv daily.sh ~/daily.sh
```

### Cron Schedule setup
This sets it to run at 4AM. Replace "WhoAmI" with the username 

```terminal
#Export current crontab
$ crontab -l > mycron
#echo new crontab into file
$ echo "0 4 * * * /home/WhoAmI/daily.sh" >> mycron
#Install new crontab from file
$ crontab mycron
$ rm mycron
```
### Note:
From time to time you'll want to delete or clear the date.log. It will continue to grow continuously. 
