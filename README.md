# 🧪 Smart Lab Manager (Automated System Maintenance & Shutdown)

## 📌 Overview

Smart Lab Manager is a Windows-based automation tool built using batch scripting. It is designed to enforce proper and consistent shutdown procedures in computer labs by automatically performing system cleanup, maintenance, and safe shutdown operations.

It's to ensure that the manual process of closing the operations in a computer system using a switch does not tamper with the operations, files, softwares, and also the hardware, hence reducing risks
and damage experiences in a computer system.

Instead of relying on users to manually close programs and shut down systems correctly, this tool ensures that every machine follows a structured process — reducing errors, improving performance, and extending hardware lifespan.

---

## ⚡ Core Features

* 🛑 **Automated Program Closure**
  Safely terminates running applications (browsers, editors, etc.) to prevent data corruption

* 🧹 **Cache & Temporary File Cleanup**
  Removes unnecessary files to free up disk space and improve performance

* 🛠️ **System Maintenance**
  Runs system checks and repairs using built-in Windows tools

* ⚡ **Resource Optimization**
  Clears background processes and unused data

* 🔌 **Automated Safe Shutdown**
  Ensures a clean and orderly system shutdown

* ⏰ **Scheduled Automation (Task Scheduler Support)**
  Can be configured to run automatically at a specific time every day using Windows Task Scheduler

---

## 🧩 Tools & Technologies

* **Batch Scripting (.bat)** – Core automation logic
* **taskkill** – Terminates running applications
* **del / rd** – Deletes files and directories
* **sfc /scannow** – Repairs corrupted system files
* **timeout** – Adds delays between operations
* **shutdown** – Powers off the system safely
* **Environment Variables** (`%temp%`, `%appdata%`, `%localappdata%`) – Dynamic file paths

(All processes are defined in the batch script and project design )

---

# 🚀 FULL STEP-BY-STEP SETUP GUIDE

---

## 🪟 Windows Installation & Setup

> ⚠️ This project is designed specifically for **Windows OS**

---

### ✅ Step 1: Get the Batch File

* Save or download the script as:

```text id="file-name"
SmartLabManager.bat
```

---

### ✅ Step 2: Place the File

Store it in a secure and accessible location:

```text id="file-location"
C:\LabTools\SmartLabManager.bat
```

---

### ✅ Step 3: Run as Administrator

This step is **critical** for full functionality.

```text id="run-admin"
Right-click → Run as Administrator
```

---

### ✅ Step 4: Execute the Script

```bash id="run-script"
SmartLabManager.bat
```

---

## ⏰ AUTOMATING WITH TASK SCHEDULER (DAILY EXECUTION)

One of the most powerful features of this project is the ability to **automate it completely** using the built-in Windows Task Scheduler.

This allows the script to:

* Run **automatically every day**
* Execute **without user interaction**
* Ensure **consistent lab maintenance**
* Enforce **proper shutdown habits across all systems**

---

### 🧭 Step-by-Step: Set Daily Automation

---

### ✅ Step 1: Open Task Scheduler

* Press:

```text id="open-task-scheduler"
Windows Key + R → type taskschd.msc → Enter
```

---

### ✅ Step 2: Create a New Task

* Click:

```text id="create-task"
"Create Basic Task..."
```

* Name it:

```text id="task-name"
Smart Lab Manager Auto Shutdown
```

---

### ✅ Step 3: Set Trigger (When it Runs)

Choose:

```text id="trigger"
Daily
```

Then:

* Set your preferred time (e.g., 6:00 PM after lab hours)

---

### ✅ Step 4: Set Action

Choose:

```text id="action"
Start a Program
```

Browse and select:

```text id="script-path"
C:\LabTools\SmartLabManager.bat
```

---

### ✅ Step 5: Finish Setup

Click:

```text id="finish"
Finish
```

---

### ⚙️ (IMPORTANT) Advanced Settings

After creating the task:

1. Open task properties
2. Enable:

```text id="admin-option"
"Run with highest privileges"
```

3. Optional:

```text id="power-option"
"Run whether user is logged on or not"
```

---

### 🔁 Result

Your system will now:

* Automatically run the script daily
* Perform cleanup and maintenance
* Shut down safely — without manual input

---

## 🐧 Linux Compatibility

❌ Not supported natively (Batch scripting is Windows-specific)

✔️ Alternatives:

* Rewrite as a Bash script
* Use cron jobs for scheduling

---

# ▶️ HOW TO USE

### 🧪 Manual Usage Flow

```text id="usage-flow"
1. Run the script
2. Wait as tasks execute automatically
3. System performs cleanup and maintenance
4. Computer shuts down safely
```

---

# 🔄 DETAILED SYSTEM WORKFLOW

```text id="workflow"
Terminate Applications
   ↓
Clear Cache Files
   ↓
Delete Temporary Files
   ↓
Run System File Check
   ↓
Wait (timeout for stability)
   ↓
Shutdown System
```

---

# ⚠️ WHY THIS PROJECT IS IMPORTANT

Improper shutdowns can cause:

* ❌ Data loss or corruption
* ❌ File system damage
* ❌ Hardware wear (especially HDDs)
* ❌ Boot failures
* ❌ Software instability
* ❌ Loss of system logs and settings

Smart Lab Manager eliminates these risks by enforcing a structured shutdown process.

---

# 💡 BENEFITS

* 💰 **Cost Savings** – Reduces repair/replacement costs
* ⚡ **Improved Performance** – Regular cleanup boosts speed
* 🛡️ **System Stability** – Prevents corruption and errors
* 🔒 **Better Security** – Clears sensitive cached data
* 🔄 **Automation** – No manual intervention required
* 🔋 **Energy Efficiency** – Prevents unnecessary power usage

---

# 🔍 DETAILED PROCESS BREAKDOWN

### 1. 🛑 Terminate Active Applications

```bash id="taskkill-example"
taskkill /F /IM chrome.exe
```

➡️ Prevents data corruption and frees resources

---

### 2. 🧹 Clear Application Caches

```bash id="clear-cache"
rd /s /q %localappdata%\Google\Chrome\User Data\Default\Cache
```

➡️ Improves performance and privacy

---

### 3. 🗑️ Delete Temporary Files

```bash id="temp-clean"
del /q /f /s %temp%\*
```

➡️ Frees disk space

---

### 4. 🛠️ System File Check

```bash id="sfc-command"
sfc /scannow
```

➡️ Repairs system file corruption

---

### 5. ⏳ Controlled Execution

```bash id="timeout-command"
timeout /t 3
```

➡️ Ensures smooth execution

---

### 6. 🔌 Safe Shutdown

```bash id="shutdown-command"
shutdown /s /t 3
```

➡️ Prevents abrupt power loss

---

# 📂 PROJECT PURPOSE

This project promotes:

* Responsible computer usage
* Proper shutdown discipline
* Long-term system reliability

It is inspired by the principle that **small consistent actions lead to significant long-term improvements**.

---

# 🚀 FUTURE IMPROVEMENTS

* 🔄 Dynamic application detection
* 🌐 Network-wide deployment across lab computers
* 📊 Error logging system
* ⚙️ Customizable execution options
* 💾 Backup integration before shutdown
* 🔔 User notification prompts

---

# ✅ FINAL SUMMARY

Smart Lab Manager is a powerful automation tool that:

* Enforces proper shutdown procedures
* Cleans and maintains system health
* Prevents hardware and software damage
* Can run automatically every day using Task Scheduler

---

🔥 Ideal for schools, labs, cyber cafés, and any shared computing environment.

---

