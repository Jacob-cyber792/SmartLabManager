Smart Lab Manager 💻

Automated system maintenance and safe shutdown tool for Windows computer labs

📖 Description

Smart Lab Manager is a Windows batch scripting project designed to enforce proper shutdown procedures in computer labs.

Improper shutdown of computers is a common issue that leads to data loss, system corruption, hardware damage, and reduced performance over time. This project solves that problem by automating a structured shutdown process that ensures all applications are closed, unnecessary files are cleaned, and the system is safely powered off.

This project was developed as part of a school competition and advanced to the national level, demonstrating its real-world relevance and impact.

🎯 Objectives
Promote safe and proper computer shutdown practices
Improve system performance and reliability
Reduce hardware and maintenance costs
Automate repetitive system maintenance tasks
Encourage responsible use of technology in shared environments
⚙️ Features
Automated Application Closure
Closes running programs such as browsers and development tools to prevent background processes.
Cache Cleaning
Removes cached data from applications to improve performance and enhance privacy.
Temporary File Cleanup
Deletes unnecessary system files to free up disk space.
System File Repair
Runs system diagnostics (sfc /scannow) to detect and fix corrupted files.
Execution Control
Uses timed delays to ensure smooth and complete execution of tasks.
Safe Shutdown Automation
Powers off the system only after all maintenance tasks are completed.
🚀 How It Works

The script performs the following steps:

Terminates active applications using taskkill
Clears application caches using directory removal commands
Deletes temporary files from system directories
Runs system file checker to repair corrupted files
Applies delays between operations using timeout
Shuts down the system safely using shutdown
🧰 Technologies Used
Batch Scripting (Windows CMD)
taskkill – Process management
del / rd – File and directory operations
sfc – System file repair
timeout – Execution timing
shutdown – System shutdown
Environment variables (%temp%, %appdata%, %localappdata%)
⚠️ Why Proper Shutdown Matters

Improper shutdown can result in:

Data loss or corruption
File system errors
Loss of unsaved work
Hardware wear and damage
Boot failures
Software instability
Loss of system configurations
✅ Benefits
Improves overall system performance
Enhances data security by clearing sensitive files
Extends hardware lifespan
Reduces maintenance and repair costs
Saves time through automation
Promotes energy efficiency
🔮 Future Improvements
Dynamic detection of running applications
Network-wide deployment across multiple computers
Error logging and reporting system
Customizable execution options
Backup integration before shutdown
User notification interface
📦 Installation & Usage

Download or clone this repository:

git clone https://github.com/your-username/smart-lab-manager.git
Navigate to the project folder

Run the batch file as Administrator:

SmartLabManager.bat
The script will execute all maintenance tasks and shut down the system automatically
⚠️ Disclaimer
Ensure all work is saved before running the script
Intended for controlled environments such as school computer labs
Use with administrative privileges for full functionality
👨‍💻 Author

Jacob Etavali

🙏 Acknowledgment

Special thanks to Franklin Chemjore for guidance and supervision.

⭐ Contributing

Contributions are welcome! Feel free to fork the repository and submit a pull request.

📄 License

This project is for educational purposes. You may modify and use it freely.

