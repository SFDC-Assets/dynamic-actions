sf demoutil org create scratch -f config/project-scratch-def.json -d 3 -s -p customer -e dynactions.demo
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org assign permset -n AppBuilder
sf automig load -d data --concise
sf org open -p /lightning/o/Vehicle__c/list?filterName=Recent
