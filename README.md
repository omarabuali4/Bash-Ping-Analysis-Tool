[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)



# Bash Ping Analysis Tool

This Bash script is an program designed to analyze the results of a ping command and provide various statistics based on the ping output.
## Main Features
- **Default Ping and Create File:**
  - Initiates a default ping to "google.com" with 4 packets and redirects the output to a file named `ping.txt`.
  
- **Number of Sent Packets:**
  - Displays the number of packets sent during the ping operation.
  
- **Number of Sent Bytes:**
  - Displays the number of bytes sent during the ping operation.
  
- **Average Time to Live (TTL):**
  - Displays the average Time to Live (TTL) value from the ping results.
  
- **Minimum/Average/Maximum Times of Sent Packets:**
  - Displays the minimum, average, and maximum times taken for the packets to be sent.
  
- **Amount of Lost Packets:**
  - Displays the number of packets lost during the ping operation.
  
- **Quit:**
  - Provides an option to delete the `ping.txt` file and exit the program.

## How to Use

1. Install the script `ping_analysis.sh`
2. Run the script `ping_analysis.sh` using the following command:
   
   ```bash
   sudo ./ping_analysis.sh
