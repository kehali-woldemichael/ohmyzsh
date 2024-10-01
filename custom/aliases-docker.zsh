# Images
alias dip="docker image pull"
alias dis="docker image push"

# Container 
alias dps="docker ps" # List all running containers
alias dpsa="docker ps -a" # List all running and stopped containers
alias dcc="docker commit"
# Start
alias dcs="docker container start"
alias dce="docker container stop"
# Create/delete
alias dcrs="docker container restart" # Remove specified docker container
alias dcrm="docker container rm" # Remove specified docker container

# Network
alias dnls="docker network ls" 
alias dncr="docker network create" 
alias dncn="docker network connect" 
alias dndc="docker network disconnect" 

# Exec 
alias dcx="docker exec" # Run a new command in a running container
alias dcsh="docker exec -it" # Open interactive shell in container 
