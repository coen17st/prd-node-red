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
                checkout scm

      }
    }
  }
} // end pipeline
