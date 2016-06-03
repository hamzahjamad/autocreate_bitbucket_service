#!/bin/bash


runcurl(){
	username=$1 
	password=$2 
	reponame=$3 
	jkurl=$4 
	jktoken=$5 
	jobname=$6
  	curl -u $username:$password -X POST https://api.bitbucket.org/1.0/repositories/$username/$reponame/services/ -d "type=POST&URL=http://$jkurl/job/$jobname/build?token=$jktoken"
}



#
# Check input params
#
if [ -n "${1}" -a -n "${2}" -a -n "${3}" -a -n "${4}" -a -n "${5}" -a -n "${6}" ]; then   
    runcurl $1 $2 $3 $4 $5 $6
else
    echo "Usage:"
    echo "  Please follow this convention: ${0} 'bitbucket_username' 'bitbucket_password' 'repository_name' jenkin_url' 'jenkins_project_token' "
    exit 1
fi



