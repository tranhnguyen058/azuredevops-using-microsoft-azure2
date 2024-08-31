# Overview

This project help you to know about deploy on azure , build CI/CD pipeline , test API app service , cloud shell.
 ![alt text][Badge]

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
https://trello.com/b/iZRpZVWd/udacity-azure-devops-building-ci-cd-pipeline
* A link to a spreadsheet that includes the original and final project plan>
https://docs.google.com/spreadsheets/d/1hA4k7orHzZA6g1LVb-WnYH0zPMoDqeDH1R21_-CroDQ/edit?usp=sharing


## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>
![alt text](screenshots/image.png)

![alt text](<screenshots/image copy.png>)

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service
In order to run on Azure App service we clone the repo,navigate to the repo and after that we run `make setup`, then run 
`source .az-devops-test-temporary` , after that run `make install` to install requirements for python.

- Deploy app with localhost on local run ` python app.py` , result test local run :
![alt text](<screenshots/image copy 2.png>)

- Deploy app with Azure App Service  run : ` az webapp up -n cocvu-up-prj2 -g Azuredevops --sku FREE`, result test with Azure App Service:
![alt text](<screenshots/image copy 3.png>)


* Project cloned into Azure Cloud Shell
create ssh key: 
`ssh-keygen -t rsa.`

after key is generated we get it in ./ssh folder 
 enter till it done generate
cd ./ssh => get public key by using `cat id_rsa.pub`
copy and paste it into github account.
after done added ssh key into github account 
you easily to clone it self:
![!\[alt text\](1.JPG)](screenshots/1.JPG)

* Passing tests that are displayed after running the `make all` command from the `Makefile`:
![alt text](screenshots/2.JPG)

* Output of a test run
Enable git hub action by create a folder .github/workflows at a root level. then create a yaml file (pythonapp.yaml by default):
![alt text](screenshots/3.JPG)

- Locust file test:
![alt text](<screenshots/image copy 4.png>)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
![alt text](<screenshots/image copy 7.png>)

* Running Azure App Service from Azure Pipelines automatic deployment
![alt text](<screenshots/image copy 5.png>)
* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:


```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```
![alt text](<screenshots/image copy 3.png>)

* Output of streamed log files from deployed application
![alt text](<screenshots/image copy 6.png>)
> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

To improve you need to automatically update your github repo Starter Flask into appropriate requirements.txt it waste a lot of time to fix.

## Demo 

<TODO: Add link Screencast on YouTube>
https://youtu.be/SeN8LA2rWtU




[Badge]: https://github.com/cocvu99/az-devops-test-temporary/actions/workflows/pythonapp.yaml/badge.svg