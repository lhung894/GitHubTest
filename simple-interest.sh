#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple Interest formula: SI = (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

    echo "The simple interest for a principal amount of $principal at a rate of $rate% for $time years is: $interest"
}

# Main script execution starts here
echo "Simple Interest Calculator"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read annual interest rate
read -p "Enter the annual interest rate (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
