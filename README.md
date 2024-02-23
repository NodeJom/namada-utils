# Namada Script

## Prerequisites

* Bash shell environment
* namadac command-line tool installed and configured
* Access to the Namadac RPC
* Clone the Repository:

```bash
￼Copy code
git clone https://github.com/NodeJom/namada-utils.git
```

## Voter Script
This script allows you to vote on a proposal using the Namadac RPC. It takes the proposal ID, the vote (yay, nay, or abstain), and the address as parameters. 

The memo and the wallet password are retrieved from environment variables.

### Usage

* Set Environment Variables:

Before using the script, set the following environment variables:

__MEMO__: The memo required for voting.
__NAMADA_WALLET_PASSWORD__: The password for accessing the Namadac wallet.

```
export MEMO="tpknam...."
export NAMADA_WALLET_PASSWORD="your_wallet_password"
```
* Make the Script Executable
Before running the script, ensure it has executable permissions. You can do this by running the following command:
```bash
chmod +x voter.sh
```
* Run the Script
  
Execute the script with the following command, providing the proposal ID, vote, and address as arguments:

```bash
./voter.sh <proposal_id> <vote> <address>
```
Example:

```bash
￼Copy code
./voter.sh 163 yay nodejom
```
__Note on Voter Address:__

The voter address provided as an argument (<voter>) should be one of the addresses listed in the output of the `namada wallet list` command.

## Proposal Vote Verification Script

This script allows you to iteratively check proposal votes within a specified range using the Namadac RPC. It extracts vote information for each proposal ID and presents it in a readable format.



* Modify the RPC:

Edit the query-proposal-votes command in the script according to your RPC specifications. 

* Make the Script Executable
Before running the script, ensure it has executable permissions. You can do this by running the following command:
```bash
chmod +x vote-checker.sh
```

* Run the Script:

Execute the script and provide the start and end proposal IDs as arguments:

```bash
￼Copy code
./vote-checker.sh <start_proposal_id> <end_proposal_id> <voter>
```

* Example:

```bash
./vote-checker.sh 100 170 nodejom
100: Vote Yes
101: Vote No
...
170: No Vote
```

__Note on Voter Address:__

The voter address provided as an argument (<voter>) should be one of the addresses listed in the output of the `namada wallet list` command.
