pipeline {  environment {
    registry = "https://docker-registry.theautomation.nl/"
    registryCredential = 'private-docker-registry'
  }  agent any  stages {
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
