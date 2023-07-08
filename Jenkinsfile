pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                sh ('''
                git clone https://github.com/simplon-choukriraja/brief8.git
                ''')
            }
        }
    }

    post {
        always {
            // Nettoyage de l'espace de travail Jenkins
            step([$class: 'WsCleanup'])
        }
    }
}
