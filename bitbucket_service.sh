#!/bin/bash


runcurl(){
	username=$1 
	password=$2 
	reponame=$3 
	jkusername=$4 
	jkapi=$5 
	jkurl=$6 
	jktoken=$7 
	projectname=$8
  	curl -u $username:$password -X POST https://api.bitbucket.org/1.0/repositories/$username/$reponame/services/ -d "type=Jenkins&Endpoint=http://$jkusername:$jkapi@$jkurl/&Project%20name=$projectname&Token=$jktoken"
}



#
# Check input params
#
if [ -n "${1}" -a -n "${2}" -a -n "${3}" -a -n "${4}" -a -n "${5}" -a -n "${6}" -a -n "${7}" -a -n "${8}" ]; then
   
    runcurl $1 $2 $3 $4 $5 $6 $7 $8
else
    echo "Usage:"
    echo "  Please follow this convention: ${0} 'bitbucket_username' 'bitbucket_password' 'repository_name' 'jenkins_username' 'jenkins_user_api_token' 'jenkin_url' 'jenkins_project_token' 'jenkin_project_name' "
    exit 1
fi



