option=$(whiptail --title "VMS Options" --menu "Choose your vm" 15 60 8 \
"Back" "Return to the main menu" \
"Virtual Box" "Just opens the virtual box" \
"Ubuntu 18.04" "Start your Ubuntu VM" \
"Kali-Linux-2019.1-vbox-amd64" "Start your Kali VM" \
"Parrot Security" "Start your Parrot VM" \
"Linux Mint Mate" "Start you Linux Mint Mate VM" 3>&1 1>&2 2>&3)
echo $option
if [[ $option == "Virtual Box" ]]; then
    whiptail --title "Virtual Box" --msgbox "${option} Opening Virtual Box" 8 78
    virtualbox

elif [[ $option == "Back" ]]; then
    whiptail --title "Exiting" --msgbox "Goodbye" 8 78
    exit 0

elif [[ $option == "" ]]; then
    whiptail --title "Exiting" --msgbox "Goodbye" 8 78
    exit 0

else
    whiptail --title "VM chose" --msgbox "${option} chose ---->STARTING<----" 8 78
    vboxmanage startvm "$option"
    
fi
