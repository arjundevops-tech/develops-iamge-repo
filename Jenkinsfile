@Library('shared_librareis@main) 
pipeline {
  agent any 
stages {
  stage ('building image') {
    steps {
      script {
         building_image(
           imageName : "dharimigariarjun/devops-tools-image",
           dockerfile : "Dockerfile",
           buildContext : "."
         )
      }
    }
  }
 stage ('Scan image') {
   steps {
     script {
       trivy_scan_image(
          imageName : "dharimigariarjun/devops-tools-image",
          format : "json",
          outputFile : "deveop-image-reports.json"
         )
     }
   }
 }
stage ('pushing image') {
  steps {
    script {
      pushing_image(
        imageName : "dharimigariarjun/devops-tools-image",
        credentialsId : "docker-credentials-id"
        )
    }

   }
 }
}
}
        
