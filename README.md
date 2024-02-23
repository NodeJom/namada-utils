# Proposal Vote Verification Script

This script allows you to iteratively check proposal votes within a specified range using the Namadac RPC. It extracts vote information for each proposal ID and presents it in a readable format.

## Prerequisites
Bash shell environment
namadac command-line tool installed and configured
Access to the Namadac RPC

## Usage

* Clone the Repository:

```bash
￼Copy code
git clone https://github.com/NodeJom/namada-utils.git
```

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
