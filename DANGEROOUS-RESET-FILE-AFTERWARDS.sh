# Now, the following assumes you want to recreate an empty home dir now, and you
# are already logged in under the username whose folder you just deleted
# above.

# recreate an empty home dir
sudo mkdir /home/my_username
# ensure your group name exists (wiping your home dir may have removed it I
# think, as that seems to be what happened to me just now)
sudo groupadd my_username
# add your username back to this group
sudo usermod -a -G my_username my_username

# give your username ownership over the new, empty home dir
sudo chown -R my_username:my_username /home/my_username
# ensure everything looks right (you should see the user and group ownership
# of your new home dir is 'my_username my_username')
ls -alF /home

# (Optional, but recommended) restore Ubuntu's default `~/.bashrc` and
# `~/.profile` type bash terminal configuration files
cp /etc/skel/.bash_logout ~
cp /etc/skel/.bashrc ~
cp /etc/skel/.profile ~
# Now re-source these files to refresh your terminal
. ~/.profile

# now open your file manager, such as nemo 
# (see: https://askubuntu.com/a/1173861/327339)
# and check inside your home dir; you'll see Ubuntu automatically has already
# recreated a ~/Desktop dir for you.
ls -alF ~
