### Setup ansible config file
- Create ansible folder inside /etc folder
- Create ansilbe.cfg file 
-   [defaults]
    inventory = /path/to/host/file
    remote_user = pranav-masekar
    private_key_file = /home/ubuntu/.ssh/id_rsa
    host_key_checking = False

### Run following command to give access to jenkins
    sudo chown -R jenkins:jenkins /home/ubuntu/.ssh


