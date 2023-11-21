# Task 1

# Shuffle Numbers Bash Script

This Bash script shuffles an array of numbers from 1 to 10 and outputs them in a random order.

## Build Instructions
There is no build required for this script. To use it, follow the Usage instructions below.

## Usage
1. Clone or download the script file `shuffle_numbers.sh` to your local machine.
2. Ensure the script has execute permissions:
    ```bash
    chmod +x shuffle_numbers.sh
    ```
3. Run the script in a terminal:
    ```bash
    ./shuffle_numbers.sh
    ```

## Tests
### Running Tests
The tests for this script are available in the `test.bash` file. To execute the tests, follow these steps:

1. Ensure both `shuffle_numbers.sh` and `test.bash` are in the same directory.
2. Make sure both files have execute permissions:
    ```bash
    chmod +x shuffle_numbers.sh test.bash
    ```
3. Run the tests using the following command:
    ```bash
    ./test.bash
    ```

## Description
The script employs a Fisher-Yates shuffling algorithm to randomize the order of numbers from 1 to 10 in a Bash environment. It defines a function to generate a random number within a specified range and shuffles the numbers array to produce a randomized sequence.

## Known Limitations / Bugs
- Uses the RANDOM variable, which generates pseudorandom numbers and may not be suitable for cryptographic applications or high-security randomization.
- In rare cases, the script might take longer to execute if the shuffling algorithm encounters repeated random selections. However, for small arrays like 1 to 10, this is highly unlikely.


# Task 2
-  Request Rate,
-  Request Latency
-  Error Count
are the most beneficial metrics , find to monitor on the web server side. Additionally, tracking the following metrics would be interesting to gauge the server's capacity and measure the load accurately:

- CPU Utilization
- Memory Usage
- Memory Utilization
- Memory Fragmentation
- Network Usage
- Packet Losses
- Disk I/O  
To collect both metric groups, I can use a tool like Prometheus + Grafana or Zabbix. The metrics we will be tracking here are quite general, so I don't anticipate facing any difficulties. However, if I consider not finding a ready-made template or node exporter, and if I have to write them myself, fetching the metrics correctly could be challenging and time-consuming

