#!/bin/bash

# Function to display the menu
display_menu() {
    echo "Menu:"
    echo "1. List files in current directory"
    echo "2. List directories in current directory"
    echo "3. Show current date and time"
    echo "4. Exit"
    echo "-----------------------------"
}

# Function to perform actions based on user choice
perform_action() {
    read -p "Enter your choice [1-4]: " choice
    case $choice in
        1)
            echo "Listing files in current directory:"
            ls -l
            ;;
        2)
            echo "Listing directories in current directory:"
            ls -l | grep "^d"
            ;;
        3)
            echo "Current date and time:"
            date
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
}

# Main script logic
while true; do
    display_menu
    perform_action
done
