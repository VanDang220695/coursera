#!/bin/bash

# Simple Interest Calculator

echo "---------------------------------------"
echo "      Simple Interest Calculator       "
echo "---------------------------------------"

# Read user input
read -p "Enter Principal amount (P): " principal
read -p "Enter Rate of interest (R%): " rate
read -p "Enter Time period in years (T): " time

# Perform calculation using 'bc' for floating point support
# scale=2 ensures the result is rounded to two decimal places
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "---------------------------------------"
echo "Interest Earned: $interest"
echo "Total Amount (P + I): $total"
echo "---------------------------------------"
