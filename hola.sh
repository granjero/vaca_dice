#!/bin/bash

# Replace with your actual API key and API endpoint
API_KEY=""
API_ENDPOINT="https://api.api-ninjas.com/v1/facts"

# Make the API request and save the JSON response
response=$(curl -s -H "X-Api-Key: $API_KEY" -H "Content-Type: application/json" -X GET "$API_ENDPOINT")

# Extract the data you want from the JSON response (adjust as needed)
data=$(echo "$response" | jq '.[0] | .fact')

# Display the data using cowsay
#echo "$data" | cowsay
cowsay $data

