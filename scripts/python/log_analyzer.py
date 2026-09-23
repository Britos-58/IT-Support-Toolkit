#!/usr/bin/env python3
"""
Log Analyzer Script
Purpose: Scans a given text/log file for specific error keywords (ERROR, CRITICAL, FAILED)
and outputs a summary of the findings. Useful for parsing massive server logs quickly.
"""

import os
import sys

def analyze_log(file_path):
    # Keywords to look for in the log file
    error_keywords = ['ERROR', 'CRITICAL', 'FAILED', 'EXCEPTION']
    summary = {keyword: 0 for keyword in error_keywords}
    extracted_errors = []

    if not os.path.exists(file_path):
        print(f"[-] Error: File '{file_path}' not found.")
        sys.exit(1)

    print(f"[*] Analyzing log file: {file_path}...\n")

    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line_num, line in enumerate(file, start=1):
                upper_line = line.upper()
                for keyword in error_keywords:
                    if keyword in upper_line:
                        summary[keyword] += 1
                        # Save the first 10 errors for the preview report
                        if len(extracted_errors) < 10:
                            extracted_errors.append(f"Line {line_num}: {line.strip()}")
                        break # Move to next line once an error is found
    except Exception as e:
        print(f"[-] Failed to read file: {e}")
        sys.exit(1)

    # Print Summary
    print("=== LOG ANALYSIS SUMMARY ===")
    total_errors = 0
    for keyword, count in summary.items():
        print(f"{keyword}: {count} occurrences")
        total_errors += count
    
    print(f"Total Issues Found: {total_errors}\n")

    # Print Preview
    if extracted_errors:
        print("=== LATEST ERROR PREVIEW (Top 10) ===")
        for err in extracted_errors:
            print(err)

if __name__ == "__main__":
    # For demonstration, we create a dummy log file if one is not provided
    sample_log = "sample_server.log"
    
    if len(sys.argv) > 1:
        target_file = sys.argv[1]
    else:
        print("[!] No file provided. Please run: python log_analyzer.py <path_to_log_file>")
        print("[!] Exiting.")
        sys.exit(0)

    analyze_log(target_file)