#!/bin/bash

# Check the number of arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <start_proposal_id> <end_proposal_id> <voter>"
    exit 1
fi

start_proposal_id=$1
end_proposal_id=$2
voter=$3
# Function to extract the vote from the command output
get_vote() {
    if grep -q "Vote: yay" <<< "$1"; then
        echo "Vote Yes"
    elif grep -q "Vote: nay" <<< "$1"; then
        echo "Vote No"
    elif grep -q "Vote: abstain" <<< "$1"; then
        echo "Vote Abstain"
    else
        echo "No vote"
    fi
}

# Loop to execute the command for each proposal ID in the specified range
for ((proposal_id=start_proposal_id; proposal_id<=end_proposal_id; proposal_id++)); do
    # Execute the command and capture the output
    output=$(namadac query-proposal-votes --proposal-id $proposal_id --voter $voter --node https://namada-rpc.nodejom.xyz 2>&1)
    
    # Extract the vote from the output
    vote=$(get_vote "$output")
    
    # Display the result in the specified format
    echo "$proposal_id: $vote"
done
