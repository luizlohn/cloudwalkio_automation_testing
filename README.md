# CargoX Tests Alarm

# Automation Test for Alarms
Testing Alarms from DataDog, using the libs:
- Cucumber:Write scenarios in Gherkin 
- Rake: Process automation of task
- DataDog API: Access the DataDog Monitors and alarms
- RSpec: Result validation


## How to Configure Environment ##

### Install ruby on Windows/Linux/MAC ###
Access to step-by-step help:
* [Install Ruby](http://installrails.com)

Verify Ruby version
```shell
$ ruby -v
```

### Clone project ###
Clone the project using the follow command:
```shell
git clone git@github.com:cargox/cargox_test_alarm.git
```

Access project root path to install bundle:
```shell
cd /cargox_test_alarm
```   
---
## Run locally
### Install all gems ###
In the same project root path run the follow command:
```shell
gem install bundle
bundle install
```

### Execute tests###
Execute this command inside the project:
```shell
$ rake run[ENV,DEBUGGER,PROFILE]
```
Understand command:  
ENV: qa1, qa2... 
DEBUGGER: true, false
PROFILE: [profiles](config/cucumber.yml)  

Example: 
```shell
bundle exec rake run[qa1,true,consult]
```
---

## Run locally on Docker

### Generate Docker Container
```sh
$ docker-compose build
```

### Running Docker
```sh
$ docker-compose run --rm app rake run[qa1,true,consult]
```
# cloudwalkio_automation_testing
