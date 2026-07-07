# XAMPP CLI for Linux & macOS

A simple and powerful command-line interface for managing XAMPP services on Linux and macOS.

XAMPP CLI allows you to control XAMPP directly from the terminal without opening the XAMPP Manager application.

The project provides:
- service management
- automatic XAMPP detection
- configuration management
- diagnostics
- process monitoring
- automatic MySQL force shutdown handling

Supported services:

- MySQL / MariaDB
- Apache HTTP Server

---

# Features

- Start and stop XAMPP services
- Restart complete XAMPP environment
- Automatic XAMPP installation detection
- Config file support
- Service status monitoring
- XAMPP diagnostics
- MySQL process recovery
- Open phpMyAdmin from terminal
- Terminal animations during operations

---

# Requirements

- macOS or Linux
- XAMPP installed

Default macOS location:

```bash
/Applications/XAMPP
```

Linux location:

```bash
/opt/lampp
```

- Administrator access (`sudo`)

---

# Installation

Clone or download the repository:

```bash
git clone https://github.com/PierrOwO/XAMPP-CLI.git

cd XAMPP-CLI
```

Make scripts executable:

```bash
chmod +x install.sh xampp
```

Run installer:

```bash
sudo ./install.sh
```

After installation, the command will be available globally:

```bash
xampp
```

---

# Usage

Show available commands:

```bash
xampp help
```

---

# Service Management

## Start XAMPP

Starts Apache and MySQL:

```bash
xampp start
```

Example:

```text
Starting XAMPP...

Starting MySQL... ✓
Starting Apache... ✓

XAMPP is ready.
```

---

## Stop XAMPP

Stops Apache and MySQL:

```bash
xampp stop
```

Example:

```text
Stopping XAMPP...

Stopping Apache... ✓
Stopping MySQL... ✓

XAMPP stopped.
```

---

## Restart XAMPP

```bash
xampp restart
```

---

# MySQL

## Start MySQL

```bash
xampp mysql start
```

Example:

```text
Starting MySQL... ✓
```

---

## Stop MySQL

```bash
xampp mysql stop
```

Example:

```text
Stopping MySQL... ✓
MySQL: stopped
```

If XAMPP fails to completely stop MySQL, XAMPP CLI detects the remaining process and automatically forces shutdown:

```text
XAMPP did not stop MySQL, forcing shutdown...

Force stopping MySQL process: 91238

MySQL: stopped
```

---

# Apache

## Start Apache

```bash
xampp apache start
```

Example:

```text
Starting Apache... ✓
```

---

## Stop Apache

```bash
xampp apache stop
```

Example:

```text
Stopping Apache... ✓
Apache: stopped
```

---

# Status

Check running services:

```bash
xampp status
```

Example:

```text
XAMPP Status
------------

MySQL:  running
Apache: stopped
```

---

# Diagnostics

Run system checks:

```bash
xampp doctor
```

Example:

```text
XAMPP Doctor
------------

✓ XAMPP detected
✓ MySQL detected
✓ Apache detected
```

---

# Configuration

Display current configuration:

```bash
xampp config
```

Example:

```text
XAMPP CLI Config
----------------

XAMPP_PATH=/Applications/XAMPP/xamppfiles/xampp
MYSQL_PORT=3306
APACHE_PORT=80
PHPMYADMIN_URL=http://localhost/phpmyadmin
```

---

# Setup

Configure XAMPP manually:

```bash
xampp setup
```

The setup wizard will:
- search for XAMPP automatically
- allow custom paths
- create configuration file

Configuration is stored in:

```bash
~/.xampp-cli/config
```

---

# Information

Show XAMPP CLI information:

```bash
xampp info
```

Example:

```text
XAMPP CLI Info
--------------

Version:
1.4.1

XAMPP:
/Applications/XAMPP/xamppfiles/xampp
```

---

# phpMyAdmin

Open phpMyAdmin:

```bash
xampp open phpmyadmin
```

Default address:

```text
http://localhost/phpmyadmin
```

---

# How It Works

XAMPP CLI communicates directly with the official XAMPP control script:

```bash
/Applications/XAMPP/xamppfiles/xampp
```

The CLI adds an additional management layer with:

- automatic detection
- process checking
- improved output
- error handling

---

# Process Detection

XAMPP CLI checks real running processes.

## MySQL

```bash
/Applications/XAMPP/xamppfiles/sbin/mysqld
```

## Apache

```bash
/Applications/XAMPP/xamppfiles/bin/httpd
```

This prevents incorrect service states caused by some XAMPP versions.

---

# Security

Starting and stopping services requires administrator privileges:

```bash
sudo
```

XAMPP CLI:

- does not store passwords
- uses the operating system authentication system
- only requests administrator access when required

---

# Project Structure

```text
XAMPP-CLI
│
├── install.sh
├── xampp
├── README.md
├── LICENSE
└── .gitignore
```

---

# Future Improvements

Possible future commands:

```bash
xampp logs mysql
xampp logs apache

xampp backup

xampp security

xampp ports

xampp php version

xampp uninstall
```

---

# Author

Created by [PierrOwO](https://github.com/PierrOwO)

---

# License

MIT License