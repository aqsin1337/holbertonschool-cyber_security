# Web Security - Content Discovery & Fuzzing Lab

This repository covers the fundamental techniques of Content Discovery and Fuzzing used during web security assessments and penetration testing.

---

## 📌 Lab Checklist

### 0. Manual Discovery - Secrets in Plain Sight
- [ ] Source code analysis (Source Code Review)
- [ ] Inspection of developer comments and hidden notes
- [ ] Identifying exposed credentials or sensitive information
- [ ] Reviewing `robots.txt` and `sitemap.xml` files

### 1. Manual Discovery - Headers, Headers, Always Check Headers
- [ ] HTTP response header analysis
- [ ] Identifying server and technology versions (`Server`, `X-Powered-By`)
- [ ] Inspecting custom or non-standard security headers
- [ ] Analyzing cookies and session management parameters

### 2. The Buster Series - Initiating with Gobuster `dir mode`
- [ ] Understanding basic `gobuster dir` command structure
- [ ] Selecting and applying target-specific wordlists
- [ ] Filtering results based on HTTP status codes (`-s` or `-b`)
- [ ] Scanning for specific file extensions (`-x php,html,txt,bak`)

### 3. The Buster Series - Unveiling Hidden Subdomains `dns mode`
- [ ] Utilizing `gobuster dns` mode for subdomain discovery
- [ ] Brute-forcing DNS records for the target domain
- [ ] Configuring proper DNS resolvers for accurate scanning

### 4. FFuf Series - Subdomain Fuzzing Frenzy
- [ ] Rapid subdomain fuzzing using the `ffuf` tool
- [ ] Virtual Host (VHost) discovery and enumeration
- [ ] Filtering responses by size, words, or lines (`-fs`, `-fw`, `-fl`)

### 5. The Buster Series - Fuzzing for Fun and Profit `fuzz mode`
- [ ] Parameter discovery via `gobuster fuzz` mode
- [ ] Fuzzing custom injection points within the URL/payload
- [ ] Analyzing anomalous server responses and hidden entry points
