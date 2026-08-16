# 0x0c. Web Application Forensics

## Description
This project focuses on Digital Forensics and Incident Response (DFIR) for web application environments. The objective is to develop Bash scripts to analyze system and web server attack logs. By parsing and scrutinizing log data, these scripts help identify targeted services, operating system details, compromised user accounts, attack frequencies, and potential security mitigation strategies.

## Requirements
* Allowed editors: `vi`, `vim`, `emacs`
* All files are executed on Ubuntu 20.04 LTS
* All Bash scripts must be executable (`chmod +x <filename>`)
* All Bash scripts must start with `#!/bin/bash`
* All Bash scripts must be non-interactive and contain comments explaining their logic

## Tasks Summary

| Task | File | Description |
| :--- | :--- | :--- |
| **0. Attacker Service** | `0-service.sh` | Analyzes logs to identify which service was targeted/used by attackers to gain access. |
| **1. Operation System** | `1-os.sh` | Scans log files to extract operating system and system information targeted or used during the incident. |
| **2. Account Compromised** | `2-account.sh` | Identifies specific user accounts that were targeted or compromised during the attack. |
| **3. Sum Attack** | `3-sum.sh` | Calculates and aggregates total attack statistics and log occurrence counts. |
| **4. Mitigation Firewalls** | `4-firewall.sh` | Analyzes firewall-related logs or generates rules to block malicious traffic vectors. |
| **5. Users Accounts** | `5-user_accounts.sh` | Examines system user account activities, creation dates, or privilege usage in log records. |
| **6. Future Mitigations** | `6-future_mitigations.sh` | Provides comprehensive log data processing to assist in long-term security hardening and mitigation planning. |

## Execution Example
```bash
./0-service.sh
