pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git clone https://github.com/simplon-choukriraja/brief8.git
            }
        }
    
        
        stage('Build Docker') { 
            steps {
                docker {
                    image 'python:2-alpine' 
                } 
            }       
        }
    }
}
