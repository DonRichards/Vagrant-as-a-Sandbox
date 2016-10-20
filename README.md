# Script to run Vagrant as a Sandbox
"A sandbox is a testing environment that isolates untested code changes and outright experimentation from the production environment or repository, in the context of software development including Web development and revision control." -Wikipedia

![](https://cloud.githubusercontent.com/assets/2738244/19565319/6a729be0-96b4-11e6-9dee-27b62027e6b1.jpg)

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
_Replace "WhoAmI" with the username._ <br/>
This sets it to run at 4AM and at reboot. 

```terminal
#Export current crontab
$ crontab -l > mycron
#echo new crontab into file
$ echo "0 4 * * * /home/WhoAmI/daily.sh" >> mycron
$ echo "@reboot /home/WhoAmI/daily.sh" >> mycron
#Install new crontab from file
$ crontab mycron
$ rm mycron
```

### Note:
From time to time you'll want to delete or clear the date.log. It will continue to grow continuously. 
