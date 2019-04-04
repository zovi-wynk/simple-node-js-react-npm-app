pipeline {
    agent { 
         dockerfile {
                additionalBuildArgs  '--build-arg version=1.0.2'
            }
        }
    environment {
        CI = 'true'
    }
    stages {
        stage('checkout') {
            steps {
                sh 'checkout scm'
            }
        }
        stage('Deliver') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                /* wrt to push the docker image*/
            }
        }
    }
}