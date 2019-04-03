pipeline {
    agent { 
        docker 
        { 
            image 'node:6.3' 
            } 
        }
    environment {
        CI = 'true'
    }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
                sh 'npm install'
            }
        }
    }
}