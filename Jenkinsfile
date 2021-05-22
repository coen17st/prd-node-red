pipeline {
  agent any
  stages {

    stage('Build') {
      steps {
        echo 'Building container image...'
        script {
          dockerInstance = docker.build(imageName)
        }

      }
    }    

stage('Publish') {
      steps {
        echo 'Publishing container image to the registry...'
        script {
          docker.withRegistry('', registryCredentialSet) {
            dockerInstance.push("${env.BUILD_NUMBER}")
            dockerInstance.push("latest")
          }
        }

      }
    }

environment {
  imageName = 'node-red'
  registryCredentialSet = 'private-docker-registry'
  registryUri = 'https://docker-registry.theautomation.nl'
}
