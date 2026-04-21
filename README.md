# 🧪 Smart Lab Manager (Automated System Maintenance & Shutdown)

## 📌 Overview

Smart Lab Manager is a Windows-based automation tool built using batch scripting. It is designed to ensure proper and consistent shutdown procedures in computer labs by automatically performing system cleanup, maintenance, and safe shutdown operations.

The project helps prevent common issues caused by improper shutdowns while improving overall system performance, stability, and hardware lifespan.

---

## ⚡ Core Features

* 🛑 **Automated Program Closure**
  Safely terminates running applications (browsers, editors, etc.)

* 🧹 **Cache & Temporary File Cleanup**
  Removes unnecessary files to free up space and improve performance

* 🛠️ **System Maintenance**
  Runs system checks and repairs using built-in Windows tools

* ⚡ **Resource Optimization**
  Clears background processes and unused data

* 🔌 **Automated Safe Shutdown**
  Ensures a clean and orderly system shutdown

---

## 🧩 Tools & Technologies

* **Batch Scripting (.bat)** – Core automation logic
* **taskkill** – Terminates running applications
* **del / rd** – Deletes files and directories
* **sfc /scannow** – Repairs corrupted system files
* **timeout** – Adds delays between operations
* **shutdown** – Powers off the system safely
* **Environment Variables** (`%temp%`, `%appdata%`, etc.) – Dynamic file paths

(All processes are defined in the batch script and project design )

---

# 🚀 FULL STEP-BY-STEP SETUP GUIDE

---

## 🪟 Windows Installation & Setup

> ⚠️ This project is designed for **Windows only**

---

### ✅ Step 1: Download / Copy the Script

* Save the batch file as:

```text id="file-name"
SmartLabManager.bat
```

---

### ✅ Step 2: Place the File

* Store it in a convenient location, e.g.:

```text id="file-location"
Desktop / Documents / Lab Systems Folder
```

---

### ✅ Step 3: Run as Administrator

This is **very important** for full functionality.

```text id="run-admin"
Right-click → Run as Administrator
```

---

### ✅ Step 4: Execute the Script

Double-click the file or run via CMD:

```bash id="run-script"
SmartLabManager.bat
```

---

## 🐧 Linux Compatibility

❌ Not supported natively (batch scripts are Windows-specific)

✔️ Possible alternatives:

* Use a **Bash script equivalent**
* Run using **Wine** (not recommended for system-level tasks)

---

# ▶️ HOW TO USE

### 🧪 Simple Usage Flow

```text id="usage-flow"
1. Run the script
2. Wait as tasks execute automatically
3. System performs cleanup and maintenance
4. Computer shuts down safely
```

---

### ⚙️ What Happens Internally

```text id="workflow"
Close Applications
   ↓
Clear Cache Files
   ↓
Delete Temp Files
   ↓
Run System File Check
   ↓
Wait (ensure completion)
   ↓
Shutdown System
```

---

## ⚠️ Why This Matters (Problem It Solves)

Improper shutdowns can cause:

* ❌ Data loss or corruption
* ❌ File system errors
* ❌ Hardware wear (especially HDDs)
* ❌ Slow system performance
* ❌ Boot failures
* ❌ Software instability

This tool eliminates those risks by enforcing a proper shutdown routine.

---

## 💡 Benefits

* 💰 **Cost Savings** – Reduces repair and maintenance costs
* ⚡ **Improved Performance** – Cleans unnecessary files regularly
* 🛡️ **System Stability** – Prevents corruption and errors
* 🔒 **Better Security** – Removes cached sensitive data
* 🔄 **Automation** – No manual intervention required
* 🔋 **Energy Efficiency** – Ensures systems are properly powered off

---

# 🔄 DETAILED PROCESS BREAKDOWN

### 1. 🛑 Terminate Active Applications

Closes programs like browsers and editors using `taskkill`
➡️ Prevents data corruption and frees system resources

---

### 2. 🧹 Clear Application Caches

Deletes stored cache data using `rd /s /q`
➡️ Improves performance and protects privacy

---

### 3. 🗑️ Delete Temporary Files

Removes files from `%temp%` using `del`
➡️ Frees disk space and avoids clutter

---

### 4. 🛠️ System File Check

Runs:

```bash id="sfc-command"
sfc /scannow
```

➡️ Repairs corrupted system files

---

### 5. ⏳ Controlled Execution

Uses:

```bash id="timeout-command"
timeout /t 3
```

➡️ Ensures each step completes properly

---

### 6. 🔌 Safe Shutdown

Executes:

```bash id="shutdown-command"
shutdown /s /t 3
```

➡️ Powers off system safely

---

# 📂 PROJECT PURPOSE

Smart Lab Manager promotes:

* Proper computer usage habits
* Responsible shutdown practices
* Long-term system health

Inspired by the idea that **small consistent actions lead to big improvements**, this tool enforces discipline in shared computer environments.

---

# 🚀 FUTURE IMPROVEMENTS

* 🔄 Dynamic detection of running applications
* 🌐 Network-wide execution across multiple computers
* 📊 Error logging system
* ⚙️ Custom user options (choose tasks)
* 💾 Backup integration before shutdown
* 🔔 User notification system

---

# ✅ FINAL SUMMARY

Smart Lab Manager is a simple yet powerful automation tool that:

* Cleans and optimizes systems
* Prevents damage from improper shutdowns
* Automates maintenance tasks
* Ensures safe and consistent computer shutdown

---

🔥 Ideal for school labs, offices, and shared computer environments.

---
