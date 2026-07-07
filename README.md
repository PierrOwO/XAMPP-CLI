# XAMPP CLI for Linux & macOS

A simple command-line interface for managing XAMPP services on Linux & macOS.

This tool allows you to control XAMPP services directly from the terminal without opening the XAMPP Manager application.

Supported services:

- MySQL / MariaDB
- Apache HTTP Server

---

## Requirements

- macOS
- XAMPP installed in:

```bash
/Applications/XAMPP
```

- Administrator access (`sudo`)

---

## Installation

Clone or download the project:

```bash
cd ~/XAMPP-CLI
```

Make scripts executable:

```bash
chmod +x install.sh xampp
```

Run the installer:

```bash
sudo ./install.sh
```

After installation, the `xampp` command will be available globally:

```bash
xampp
```

---

# Usage

## Check XAMPP Status

Check current service status:

```bash
xampp status
```

Example output:

```text
XAMPP Status
------------
MySQL:  running
Apache: stopped
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
MySQL stopped.
```

If XAMPP fails to properly stop the MySQL process, the CLI automatically detects it and forces shutdown.

---

## Restart MySQL

```bash
xampp mysql restart
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
```

---

## Restart Apache

```bash
xampp apache restart
```

---

# Project Structure

```text
XAMPP-CLI
│
├── install.sh
├── xampp
└── README.md
```

---

# How It Works

The CLI communicates directly with the XAMPP control script:

```bash
/Applications/XAMPP/xamppfiles/xampp
```

The default XAMPP status command is not used because some XAMPP macOS versions return incorrect service states.

Instead, XAMPP CLI checks the real running processes.

## MySQL process

```bash
/Applications/XAMPP/xamppfiles/sbin/mysqld
```

## Apache process

```bash
/Applications/XAMPP/xamppfiles/bin/httpd
```

This provides accurate service detection.

---

# Security

Starting and stopping services requires administrator privileges:

```bash
sudo
```

The CLI uses the macOS authentication system.

Passwords are never stored.

---

# Example Workflow

Start development environment:

```bash
xampp mysql start
xampp apache start
```

Check services:

```bash
xampp status
```

Stop services:

```bash
xampp apache stop
xampp mysql stop
```

---

# Future Improvements

Possible future commands:

```bash
xampp logs mysql
xampp logs apache

xampp php version

xampp open phpmyadmin

xampp backup mysql
```

---

# Author

Created by [PierrOwO](https://github.com/PierrOwO)

# License

MIT License