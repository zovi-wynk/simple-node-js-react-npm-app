pipeline {
    agent { 
         dockerfile true 
        }
    environment {
        CI = 'true'
    }
    stages {
        stage('stage') {
            steps {
                echo 'stage the changes'
                sh 'docker build -t my-app .'
            }
        }
        /*stage('stage') {
            steps {
                echo 'stage the changes'
                sh 'npm --version'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
            echo 'Test the code'
            sh './jenkins/scripts/test.sh'
            }
        }
        stage('Build') {
            steps {
                echo 'building the code'
                sh './jenkins/scripts/deliver.sh'
            }
        }
        stage('Deliver') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                 sh './jenkins/scripts/kill.sh'
            }
        }*/
    }
}