clear
sh banner.sh
#change user by editing this variable below
user=root
echo [INFO]:LOGGED AS $user
while true; do
    printf "Unica@$user:~$ "
    read cmd

    case $cmd in
        "cmdlist") sh cmds/cmdlist.sh ;;
        "cleand") sh cmds/cleand.sh ;;
        "uniinf") sh cmds/uniinf.sh ;;
        "uniexit") break ;;
        "home") sh unicahome.sh ;;
        "pingcheck") sh cmds/pingcheck.sh ;;
        "devinf") sh cmds/devinf.sh ;;
        "dirnow") pwd ;;
#hidden commands
        "hello") echo Hello world! ;;
        "intrnt-statu$") netstat ;;
         "internal-ipaddr") ip addr ;;
        *) $cmd ;; 

    esac
done

