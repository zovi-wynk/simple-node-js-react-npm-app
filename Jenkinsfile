pipeline {
    agent { 
         dockerfile {
                label 'my-defined-label'
                additionalBuildArgs  '--build-arg version=1.0.2'
            }
        }
    environment {
        CI = 'true'
    }
    stages {
        stage('Deliver') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                /* wrt to push the docker image*/
            }
        }
    }
}