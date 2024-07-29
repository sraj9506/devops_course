#!/bin/bash

# Function to initialize script variables and configurations
initialize() {
    # Define variables and configurations here
    LOG_FILE="/var/log/system_monitor.log"
    EMAIL="suryrajsinhjadeja95@gmail.com"
    THRESHOLD_CPU=10.0  # Example: 10% CPU threshold
    THRESHOLD_MEM=10.0  # Example: 10% memory threshold
}

# Function to collect system metrics
collect_system_metrics() {
    echo "===== System Metrics Collection ====="
    echo "CPU Usage:"
    top -b -n 1 | head -n 10  # Adjust as needed for your system
    echo ""
    echo "Memory Utilization:"
    free -h
    echo ""
    echo "Disk Space:"
    df -h
    echo ""
    echo "Network Statistics:"
    netstat -s
    echo ""
    echo "Top Processes:"
    ps auxf --sort=-%cpu | head -n 10
    echo ""
}

# Function to analyze system logs
analyze_logs() {
    echo "===== Log Analysis ====="
    echo "Recent Critical Events:"
    grep -i "error\|critical" /var/log/syslog | tail -n 10
    echo ""
}
# Function to perform health checks
perform_health_checks() {
    echo "===== Health Checks ====="
    echo "Service Status:"
    systemctl status apache2
    echo ""
    echo "Connectivity Check:"
    ping -c 3 google.com
    echo ""
}

# Function for alerting
send_alert() {
    echo "===== Alerting Mechanism ====="
    # Example: Check CPU and Memory thresholds
    current_cpu=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $2}' | cut -d '.' -f 1)
    current_mem=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    
    if (($(echo "$current_cpu > $THRESHOLD_CPU" | bc -l))); then
        echo "CPU usage above threshold ($THRESHOLD_CPU%)!"
        echo "Sending alert to $EMAIL..."
        echo "Subject: CPU Alert" | mail -s "CPU Alert" $EMAIL
    fi
    
    if (( $(echo "$current_mem > $THRESHOLD_MEM" | bc -l) )); then
        echo "Memory usage above threshold ($THRESHOLD_MEM%)!"
        echo "Sending alert to $EMAIL..."
        echo "Subject: Memory Alert" | mail -s "Memory Alert" $EMAIL
    fi
}

# Function to generate report
generate_report() {
    echo "===== Report Generation ====="
    # Compile all collected data into a report file
    report_file="system_report_$(date +%Y-%m-%d).txt"
    {
        collect_system_metrics
        analyze_logs
        perform_health_checks
    } > $report_file
    
    echo "Report generated: $report_file"
}

# Main function
main() {
    initialize
    
    # Option for interactive mode
    if [[ $1 == "--interactive" ]]; then
        echo "Running in interactive mode..."
        PS3="Select option: "
        options=("Collect Metrics" "Analyze Logs" "Health Checks" "Generate Report" "Exit")
        select opt in "${options[@]}"; do
            case $opt in
                "Collect Metrics")
                    collect_system_metrics
                    ;;
                "Analyze Logs")
                    analyze_logs
                    ;;
                "Health Checks")
                    perform_health_checks
                    ;;
                "Generate Report")
                    generate_report
                    ;;
                "Exit")
                    break
                    ;;
                *) echo "Invalid option";;
            esac
        done
    else
        # Non-interactive mode (default)
        generate_report
        send_alert  # Optionally include alerting in non-interactive mode
    fi
}

# Execute the main function
main "$@"
