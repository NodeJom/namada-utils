#!/bin/bash

# Argument verification
if [ $# -ne 3 ]; then
    echo "Usage: $0 <proposal_id> <vote> <address>"
    exit 1
fi

proposal_id=$1
vote=$2
address=$3

# Vote validation
if [ "$vote" != "yay" ] && [ "$vote" != "nay" ] && [ "$vote" != "abstain" ]; then
    echo "Invalid vote. Please provide yay, nay, or abstain."
    exit 1
fi

# Checking for the memo environment variable
if [ -z "$MEMO" ]; then
    echo "Memo is not set. Please set the MEMO environment variable."
    exit 1
fi

# Execution of the command
namadac vote-proposal --proposal-id $proposal_id --address $address --vote $vote --memo $MEMO --node https://namada-rpc.nodejom.xyz
