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
        
        
        stage('Build Image') {
            steps {
                sh ('''
                cd Brief8-Raja
                sudo docker build -t vote-app .
                ''')
            }
        }
        
