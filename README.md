# Hospital Monitoring System

## Project Overview

This project is part of an assignment to develop a system for monitoring, archiving, and backing up heart rate data in a hospital using shell scripting and Linux.
The system consists of three primary shell scripts:

1. `heart_rate_monitor.sh`: Continuously records heart rate data.
2. `archive_log.sh`: Archives the recorded heart rate data.
3. `backup_archives.sh`: Moves the archived logs to a designated directory and securely backs them up to a remote server.

## Team Collaboration

Our team worked closely on the project, with each member contributing to different parts of the code. The team leader, Chijioke Ugorji Kalu,
acted as an overseer and reviewed all scripts before they were committed. This ensured code quality and compliance with the project specifications.

## Group contribution and commits
We all contributed to all scripts even if you were not assigned to the task every script was reviewed as a group. Then we took actions as a group.
That's why we have one commit per each person because everyone who committed first had to represent to all of us and then team leader reviews and
make changes where necessary and then Commit only the right code. Except for me because I collaborated with Kelly I committed for her because we used
my laptop cause hers had an issue and she couldn't commit even though her codes were running locally because of the sandbox.

We held couple google meets where everyone presented the script he/she was assigned to do. Here is how we assigned the scripts.
1. Tristar Kelly RWEMA was assigned heart_rate_monitor.sh script
2. Kelly Nshuti was assigned archive_log.sh script
3. Michel Jean Ntwali was assigned backup_archives.sh script
4. Ralph Yvan Ishimwe was assigned in creating and documenting the Readme file and Collaborating with Kelly Nshuti on archive_log.sh
5. Chijioke Ugorji Kalu Group leader overseer and reviewed all scripts before they were committed.

## Meetings and Attendance.
Among the 4 google meets we held None of the group members missed any and we didn't physically have a get together we held all our meetings
online and collaboration, different assistance which was required was done online.

## Setup Instructions

To get started with the project, follow the steps below:

### 1. Clone the Repository
Clone the GitHub repository to your local machine 

git clone https://github.com/yourusername/hospital_monitoring_group13.git
cd hospital_monitoring_group13

## 2. Make the Scripts Executable
you can use this command to make the script executable { chmod +x heart_rate_monitor.sh archive_log.sh backup_archives.sh }

## 3. Run the scripts by starting with heart_rate_monitor.sh script which you can run by using { ./heart_rate_monitor.sh }
you will be prompted enter device name example "Monitor_A" and the process will run in the background. The log will be saved in heart_rate_log.txt.
to check the output use tail -f heart_rate_log.txt

## 4. Run the archival script
Using this command you can run the archival script ./archive_log.sh and The log file will be renamed with a timestamp, and a new heart_rate_log.txt will be
created to continue logging.

## 5. Archival and Backup Run the backup script:
Use command ./backup_archives.sh to run the script. The script will move all archived files (those with timestamps) into archived_logs_group13 and
back them up to the remote server via SSH.

## 6. If you wish you to review Backed-up Files 
You can use this: ssh username@hostname
                  ls /home/



## Submission Details
GitHub Repository: hospital_monitoring_group13 {https://github.com/ralphishimwe/hospital_monitoring_group13}
Group Number: 13
Remote Server: Sandbox server used for backups.
Directory on Remote Server: /home/
