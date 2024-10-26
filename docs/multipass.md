

> Written with [StackEdit](https://stackedit.io/).  
> # CREATING A DOCKER CONTAINER IN MULTIPASS  
>## Essentials:  
> ### >Install Multipass on your system  
> ### >Install Docker on your system  
> #### Step 1: Launch a Multipass Instance   
> Open a terminal and execute: ```sudo multipass launch --name docker-vm```. This command will create a new virtual machine named docker-vm. 
>Execute: ```sudo multipass list```. It lists virtual machines created using multipass.
> #### Step 2: Access the Multipass Instance  
> Execute: ```sudo multipass shell docker-vm```  
> This will open a shell inside the docker-vm instance.  
> #### Step 3: Install Docker  
> Inside the multipass shell, execute: ```sudo apt update``` and ```sudo apt install docker.io```. This command installs docker inside the multipass shell. 
> #### Step 4: Start Docker Service  
> Execute: ```sudo systemctl start docker```  
> Enable docker to start automatically on boot: ```sudo systemctl enable docker```  
> #### Step 5: Pull a Docker image  
> Execute: ```sudo docker pull busybox```  
> #### Step 6: Create a Docker Container  
> Execute: ```sudo docker run -d --name docker-vm busybox```  
> #### Step 7: Verify the Container  
> Execute: ```sudo docker ps```  
> This will list all running containers.  
>#### Step 8: Manage the Container   
>Stop the container: ```sudo docker stop docker-vm```  
>Start the container: ```sudo docker start docker-vm```  
>Delete the container: ```sudo docker rm docker-vm``` 
>## Alias
>An alias is a replacement string that references a Linux command and produces the same results as when executing the original command. 
>The most common purpose of an alias is to replace a long command or an expression containing multiple options and arguments. 
>For example, to alias docker:
>Enter the ```nano .zshrc``` file
>Execute the command ```alias docker="multipass exec test-vm -- docker"```