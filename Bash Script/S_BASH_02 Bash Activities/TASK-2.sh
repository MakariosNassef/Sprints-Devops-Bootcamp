# !/bin/bash

# Input type of operation
echo "Enter your Choice :"
echo "1. check if the user running the script has root privilages ..."
echo "2. change_ssh_default_port"
echo "3. disable_root_login"
echo "4. Enable Root Login"
echo "5. Add users to Linux through a shell script"
echo "6. add_backup_to_crontab"
read ch

#---------------------------------------------------------------------
if [ $ch -eq 1 ]
then
USER_ROOT_Privilage()
{
GROUP=wheel
if id -nG "$USER" | grep -q "$GROUP"; then
    echo "$USER has root privilages"
else
    echo "$USER has not root privilage"
fi
}
USER_ROOT_Privilage
fi
#---------------------------------------------------------------------
if [ $ch -eq 2 ]
then
change_ssh()
{
  echo "enter the new ssh port to change:"
  read port
  sed -i "s/#port 22/port $port/g" /etc/ssh/sshd_config
  echo "NEW SSH IS = $port"
}
change_ssh
fi
#---------------------------------------------------------------------
if [ $ch -eq 3 ]
then
disable_root_login(){
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
systemctl restart sshd.service
}
disable_root_login
fi
#---------------------------------------------------------------------

if [ $ch -eq 4 ]
then
enable_root_login(){
sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service
}
enable_root_login
fi
#---------------------------------------------------------------------
if [ $ch -eq 5 ]
then
add_user(){
echo -n "Add users to Linux through a shell script."
echo -n "Enter the username: "
read username
echo -n "Enter the password: "
read -s password
adduser "$username"
echo "$password" | passwd "$username" --stdin

read -p "you want to add this user to the sudoers? [y,n]" yn
case $yn in
        [yY] ) echo ok, we will proceed;
                echo '$username ALL=(ALL:ALL) ALL' >> /etc/sudoers;;
        [nN] ) echo exiting...;
                exit;;
        * ) echo invalid response;;
esac
#done
}
add_user
fi
#---------------------------------------------------------------------
if [ $ch -eq 6 ]
then
add_backup_to_crontab(){
sudo touch /etc/schedule
sudo echo "30 0 * * * root /home/job.sh" > /etc/schedule
sudo chmod 600 /etc/schedule
}
add_backup_to_crontab
fi
#---------------------------------------------------------------------       
