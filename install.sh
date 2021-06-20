echo "must run as root"

user=""

echo -n "insert the name of the user who must have sudo privileges: "
read $user

if [ '$user' != "" ]
then
  sed -i "s/user/$user/g" sudoers
  cp sudoers /etc/sudoers
else
  echo "please insert the name of the user"
fi


