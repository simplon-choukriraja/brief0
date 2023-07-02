pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                sh('''
                git clone https://github.com/simplon-choukriraja/Brief8-Raja.git
                ''')
            }
        }
    
        
        stage('Build Docker') { 
            agent {
                steps {
                    docker {
                    image 'python:2-alpine' 
                    } 
                }       
            }
        }
    }
}
