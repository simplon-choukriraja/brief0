## **Docker installé sur votre ordinateur**
- *Update the system*

```consol
sudo apt update 
```

- *Install dependencies*

```consol
 sudo apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y
```

- *Install Docker on Ubuntu 22.04*

```consol
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt install docker-ce docker-ce-cli containerd.io -y
```

- *Confirm that Docker is installed* 

```consol
docker version
```

## **Python installé sur votre ordinateur**

- * Add the deadsnakes PPA to Ubuntu's list of repositories*

```consol
apt install software-properties-common

add-apt-repository ppa:deadsnakes/ppa
```

- *Python installation and setup*

```consol
apt install python3.11
```

- *Establishing Python 3.11 as the standard version*

```consol
python --version
```

## *Terraform installé sur votre ordinateur*

- **Add the GPG Key**

```consol
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```
- **Validate the Authentication Process**

```consol
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```

- **Add the Repository**

```consol
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

- **Update the Packages**

```consol
sudo apt update
```

## **Exercise 1.1 : On revient aux bases des containers**

0- Azure-Vote 

Cloner le repository avec *azure-app*

```consol
git clone https://github.com/simplon-choukriraja/Brief8-Raja.git

```

1- *Dockerfile*

```consol

FROM tiangolo/uwsgi-nginx-flask:python3.6
USER root
ADD /azure-vote /app

- sudo docker build .
```

2- *docker-compose.yml*Ò

- sudo nano docker-compose.yml

```consol

version: '3.8'
services:
  redis:
    image: redis
    build : .
    privileged: true
    user: root
    ports:
     - 6379:6379
    container_name: redis
   
```
- docker compose up 
