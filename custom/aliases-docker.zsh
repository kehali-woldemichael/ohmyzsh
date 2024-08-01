# Images
alias dils="sudo docker image ls -a"
alias dip="sudo docker image pull"
alias dis="sudo docker image push"

# Container 
alias dcls="sudo docker container ls -a"
alias dps="sudo docker ps" # List all running containers
alias dpsa="sudo docker ps -a" # List all running and stopped containers
alias dcc="sudo docker commit"
# Start
alias dcs="sudo docker container start"
alias dce="sudo docker container stop"
# Create/delete
alias dcr="sudo docker container run" # Create a new container and start it using the specified command
alias dcrm="sudo docker container rm" # Remove specified docker container

# Exec 
alias dcx="sudo docker exec" # Run a new command in a running container
alias dcsh="sudo docker exec -it" # Open interactive shell in container 
