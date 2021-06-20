user=''

if [ $EUID -eq 0 ]
then

  echo -n "insert the name of the user who must have sudo privileges: "
  read user

  if [ '$user' != '' ]
  then
    echo $user	  
    sed -i "s/user/$user/g" sudoers
    cp sudoers /etc/sudoers
    echo "informations written on /etc/sudoers"
  else
    echo "please insert the name of the user"
  fi
 
else
  echo "must run as root"
fi

