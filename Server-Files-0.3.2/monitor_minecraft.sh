#!/bin/bash

# Name of the screen session
SCREEN_NAME="mcs"

# Check if the Minecraft server is running
if ! screen -list | grep -q "$SCREEN_NAME"; then
    echo "Minecraft server is not running. Starting it now..."
    # Start the server in a new screen session
    screen -dmS "$SCREEN_NAME" ./startserver.sh
else
    echo "Minecraft server is running."
fi
