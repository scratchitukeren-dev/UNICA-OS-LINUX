clear

#UNICA BANNER


echo "  _    _  _   _  _____  _____             "
echo " | |  | || \ | ||_   _|/ ____|     /\     "
echo " | |  | ||  \| |  | | | |         /  \    "
echo " | |  | || . \` |  | | | |        / /\ \   "
echo " | |__| || |\  | _| |_| |____   / ____ \  "
echo "  \____/ |_| \_||_____|\_____| /_/    \_\ "

#change user by editing this variable below
user=root

echo [INFO]:LOGGED AS $user

while true; do
    printf "Unica@$user:~$ "

    read cmd

    case $cmd in
        "cmdlist") echo cleand = Clean your display   uver = Unica version   uexit = Exit unica   dir = Show path   hello = Show Hello world! ;;
        "cleand")  ;;
        "uver") echo UNICA v1.0.0 ;;
        "uexit") break ;;
        "dir") pwd ;;
        "hello") echo Hello world! ;;
        *) $cmd ;; 

    esac
done

