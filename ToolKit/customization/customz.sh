#!/gearlock/bin/bash
if [[ ! -f /data/.ToolKit/customization/downloded.lightz ]];then
clear
figlet -c ERROR
echo -e "\e[31mERROR---> YOU HAVE NOT DOWNLOADED THE REQUIRED FILES\e[0m "
read -n 1 -s -r -p "Download then From here----> Press Enter To Continue"
bash /data/.ToolKit/wget.sh
else




clear; sleep 0.5;
figlet -w $(tput cols) -c "Customization"; echo 
geco "Need To Customize eh...?\n"
geco "${GREEN}1.New Font + emojis${RC}"
geco "${GREEN}2.Emojis-v2${RC}"
#geco "${GREEN}3.Leena Launcher${RC}\n"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"

if [ $choice = 1 ];then
rm -rf /system/fonts
mkdir /system/fonts
chmod 777 /data/.ToolKit/customization/fonts
chmod 777 /data/.ToolKit/customization/fonts/*


cp /data/.ToolKit/customization/fonts/* /system/fonts/
chmod 777 /system/fonts
chmod 777 /system/fonts/*
read -n 1 -s -r -p "DONE!!!------Press Enter To Continue"
reboot
fi

if [ $choice = 2 ];then
nout rm -rf /system/fonts/NotoColorEmoji.ttf
nout cp /data/.ToolKit/customization/emojis-v2/NotoColorEmoji.ttf /system/fonts/
chmod 644 /system/fonts/*
sleep 1
reboot
fi

#if [ $choice = 3 ];then
#nout rm -rf /data/app/ch.deletescape.lawnchair.plah-1
#nout rm -rf /data/data/ch.deletescape.lawnchair.plah
#nout mkdir /system/app/LeenaLauncher
#nout cp /data/.ToolKit/customization/leena.apk /system/app/LeenaLauncher/
#chmod 777 /system/app/LeenaLauncher/leena.apk
#chmod +x /system/app/LeenaLauncher/leena.apk
#geco "To chage the ui from zoomed it tablet ui to desktop ui click the blue paper plane icon
#then scroll down to find a app named change ui click it once to change the ui to desktop look."
#read -n 1 -s -r -p "Press Enter To Continue"
#sleep 1
#reboot
#fi
#ending of file checking if statement
fi


