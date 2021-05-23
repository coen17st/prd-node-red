pipeline {
  environment {
    imagename = "mytest"
    registryurl = "https://docker-registry.theautomation.nl"
    registrycredentials = "private-docker-registry"
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        echo 'Cloning GitHub repository...'
        checkout scm
      }
    }
  }
    stage('Building image') {
      steps{
        echo 'Building container image...'
        script {
          dockerImage = docker.build imagename
        }
      }
    }
  
  
} // end pipeline
