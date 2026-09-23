#!/usr/bin/env python3
"""
CSV Data Validator
Purpose: Validates user data (e.g., from HR) before bulk importing into Active Directory.
Checks for missing fields and invalid email formats.
"""

import csv
import re
import os
import sys

def validate_csv(file_path):
    if not os.path.exists(file_path):
        print(f"[-] Error: File '{file_path}' not found.")
        sys.exit(1)

    # Basic regex for email validation
    email_regex = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
    
    required_columns = ['FirstName', 'LastName', 'Email', 'Department']
    errors = []
    processed_rows = 0

    print(f"[*] Validating CSV File: {file_path}...\n")

    with open(file_path, mode='r', encoding='utf-8-sig') as file:
        reader = csv.DictReader(file)
        
        # Check if headers match required columns
        headers = reader.fieldnames
        if not headers or not all(col in headers for col in required_columns):
            print(f"[-] CRITICAL: Missing required columns. Expected: {required_columns}")
            sys.exit(1)

        for row_num, row in enumerate(reader, start=2): # Start at 2 to account for header
            processed_rows += 1
            
            # Check for empty values
            for col in required_columns:
                if not row.get(col) or str(row.get(col)).strip() == "":
                    errors.append(f"Row {row_num}: Missing value for '{col}'")
            
            # Validate Email format
            email = str(row.get('Email', '')).strip()
            if email and not re.match(email_regex, email):
                errors.append(f"Row {row_num}: Invalid email format -> '{email}'")

    # Output Results
    print(f"Rows processed: {processed_rows}")
    if errors:
        print(f"[!] Validation FAILED with {len(errors)} errors:")
        for err in errors:
            print(f"    - {err}")
    else:
        print("[+] Validation PASSED. The CSV is clean and ready for import.")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        target_csv = sys.argv[1]
        validate_csv(target_csv)
    else:
        print("[!] Usage: python csv_validator.py <path_to_csv_file>")