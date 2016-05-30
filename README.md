## SYNOPSIS
This is a script to create a new service hook on bitbucket.

## USAGE
For this time the script must be running the variable sequence correctly, or else it will break  
{script name}'bitbucket_username' 'bitbucket_password' 'repository_name' 'jenkins_username' 'jenkins_user_api_token' 'jenkin_url' 'jenkins_project_token' 'jenkin_project_name' 

for example (in windows)    
sh bitbucket_service.sh'bitbucket_username' 'bitbucket_password' 'repository_name' 'jenkins_username' 'jenkins_user_api_token' jenkin.test:8080 'jenkins_project_token' 'jenkin_project_name'  

## PLEASE NOTE
'jenkin_url' , dont include http:// infront of it