banner() {
    echo -e "\033[31m
.___..  ..___.__. * __.  .___..__..__..    __.
  |  |__|[__ |  | '(__     |  |  ||  ||   (__   
  |  |  |[___|__|  .__)    |  |__||__||___.__)  
                                              
\033[0m"
    echo -e "\033[31m[+] MAKE SURE YOUR RUNNING THIS TOOL AS ROOT!\033[0m"
    echo ""
    echo -e "\033[36m1) WireShark\033[0m"
    echo -e "\033[34m2) Nmap\033[0m"
    echo -e "\033[32m3) Hydra\033[0m"
    echo -e "\033[33m4) John The Ripper\033[0m"
    echo -e "\033[31m5) Social-Engineer-Tool-Kit\033[0m"
    echo -e "\033[34m6) aircrack-ng\033[0m"
    echo -e "\033[31m00) Exit\033[0m"
    echo ""
}

ws() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install wireshark ;;
        2) sudo wireshark ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

nm() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install nmap ;;
        2) sudo nmap ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

hy() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install hydra ;;
        2) sudo hydra ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

jn() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install john ;;
        2) sudo john ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

set() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install set ;;
        2) sudo setoolkit ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

ac() {
    clear
    echo -e "\033[34m1) Install\033[0m"
    echo -e "\033[34m2) Run\033[0m"
    echo -e "\033[34m99) Go Back\033[0m"
    
    read -p "Enter Option => " option
    
    case $option in
        1) sudo apt install aircrack-ng ;;
        2) sudo aircrack-ng ;;
        99) main ;;
        *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
    esac
}

main() {
    while true; do
        clear
        banner
        read -p "Enter Choice => " choice
        
        case $choice in
            1) ws ;;
            2) nm ;;
            3) hy ;;
            4) jn ;;
            5) set ;;
            6) ac ;;
            00) exit ;;
            *) echo -e "\033[31m[-] Invalid Option!\033[0m"; sleep 2 ;;
        esac
    done
}

main
