# SQL & NoSQL Injection Laboratory

This repository contains practical exercises, notes, and documentation focused on discovering, exploiting, and mitigating SQL and NoSQL database injection vulnerabilities.

---

## 📌 Syllabus & Modules

### 🛡️ SQL Injection (SQLi)
* **0. SQLi - Basic Injection Discovery**
    * Identifying initial SQL injection entry points, input sanitization flaws, and database error messages.
* **1. SQLi - Extracting Database Information**
    * Determining the database type, version, and schema structure using techniques like Union-based injection.
* **2. SQLi - Data Exfiltration from a Specific Table**
    * Extracting sensitive data (e.g., user credentials, system information) from specific target tables.
* **3. SQLi - Time-Based Blind Injection**
    * Inferring data character-by-character using time delays (`SLEEP()`, `WAITFOR DELAY`) when the application does not return visible errors or data.
* **4. SQLi - Second-Order Blind Injection**
    * Analyzing complex vulnerabilities where malicious input is safely stored in the database first, but later executed maliciously during a separate backend query.

### 📊 NoSQL Injection (NoSQLi)
* **5. NoSQLi - Discovering Injection Vulnerabilities**
    * Finding syntax, structure, and logic flaws within non-relational databases (such as MongoDB).
* **6. NoSQLi - Bypassing Login via Injection**
    * Utilizing logical operators (like `$gt`, `$ne`) to manipulate query logic and bypass authentication screens.
* **7. NoSQLi - Enumerating for Profit**
    * Exploiting NoSQL queries to enumerate and extract hidden fields, user records, and sensitive system data.

---

## 🚀 Getting Started
Each module directory contains the payloads, custom scripts, and conceptual notes utilized to complete the challenges. It is highly recommended to follow the curriculum sequentially.

> ⚠️ **Disclaimer:** This repository is created strictly for educational purposes, security research, and authorized penetration testing. Testing targets without prior written consent is illegal.
