pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                sh('''
                git clone git@github.com:simplon-choukriraja/brief0.git                ''')
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
