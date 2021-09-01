sfdx force:org:create -f config/project-scratch-def.json -d 3 -s
sfdx force:source:push
sfdx force:user:permset:assign -n AppBuilder
sfdx automig:load -d data --concise
sfdx force:org:open -p /lightning/o/Vehicle__c/list?filterName=Recent
