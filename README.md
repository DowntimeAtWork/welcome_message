# welcome_message
Edit the Welcome Message for ssh logins

I did the following for an Ubuntu 22.04 LTS server, but similar changes could be made for other distributions.

Remove/hide the existing "Message of the Day"

```
sudo mv /etc/motd /etc/.motd.bak
```

Add welcome.sh to /etc/profile.d/ through your preferred method and make it executable

```
sudo chmod +x /etc/profile.d/welcome.sh
```

When adding a new user, be sure to add something to the 'name' field for the GECOS information. The script will parse that field from the `/etc/passwd` file and plug it in to the welcome message.

Dependencies required for script to run "as is":

[neofetch](https://github.com/dylanaraps/neofetch)

[figlet](http://www.figlet.org/)

[toilet](http://caca.zoy.org/wiki/toilet)




