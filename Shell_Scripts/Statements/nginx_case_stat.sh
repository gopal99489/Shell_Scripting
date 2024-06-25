#!/bin/bash

# Function to install Nginx if not already installed
install_nginx() {
    if ! command -v nginx &> /dev/null; then
        echo "Nginx is not installed. Installing..."
        sudo apt update
        sudo apt install nginx -y
    else
        echo "Nginx is already installed."
    fi
}

# Function to uninstall Nginx
uninstall_nginx() {
    if command -v nginx &> /dev/null; then
        echo "Uninstalling Nginx..."
        sudo apt remove nginx -y
        sudo apt autoremove -y
        echo "Nginx has been uninstalled."
    else
        echo "Nginx is not installed."
    fi
}

# Function to display the menu
display_menu() {
    echo "Nginx Management Menu:"
    echo "1. Start Nginx"
    echo "2. Stop Nginx"
    echo "3. Reload Nginx configuration"
    echo "4. Restart Nginx"
    echo "5. Check Nginx status"
    echo "6. Install Nginx"
    echo "7. Uninstall Nginx"
    echo "8. Exit"
    echo "-----------------------------"
}

# Function to perform actions based on user choice
perform_action() {
    read -p "Enter your choice [1-8]: " choice
    case $choice in
        1)
            echo "Starting Nginx..."
            sudo systemctl start nginx
            ;;
        2)
            echo "Stopping Nginx..."
            sudo systemctl stop nginx
            ;;
        3)
            echo "Reloading Nginx configuration..."
            sudo systemctl reload nginx
            ;;
        4)
            echo "Restarting Nginx..."
            sudo systemctl restart nginx
            ;;
        5)
            echo "Checking Nginx status..."
            sudo systemctl status nginx
            ;;
        6)
            install_nginx
            ;;
        7)
            uninstall_nginx
            ;;
        8)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 8."
            ;;
    esac
}

# Main script logic
while true; do
    display_menu
    perform_action
done
