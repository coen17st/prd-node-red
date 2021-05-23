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
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build imagename
        }
      }
    }
   
stage('Deploy Main Image') {
   when {
      anyOf {
            branch 'main'
      }
     }
      steps{
        script {
          docker.withRegistry(registryurl, registrycredentials) {     
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')

          }
        }
      }
    }

 
    stage('Remove Unused docker image - Main') {
      when {
      anyOf {
            branch 'main'
      }
     }
      steps{
        sh "docker rmi $imagename:$BUILD_NUMBER"
         sh "docker rmi $imagename:latest"

      }
    } // End of remove unused docker image for master
  }  
} //end of pipeline
