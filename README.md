# linux_utilities

## Notifying Battery with funny emojis
### Requirement
- Xcowsay
  - if not installed, install by : ```sudo apt install xcowsay```
  - configure crontab : ```crontab -e``` and save
### conditions:
- notify to charge when the battery is less than 20%
- notify when the charge exceeds 100%
- notify when the battery is less than 5% and computer suspends after 30 secs

### How to Run?
- clone the script
- ```cd notify_battery```
- make executables: ```chmod +x battery.sh && chmod +x run.sh```
- then execute : ```./run.sh```
- wait for required condition




