pipeline {
   agent any
   stages {
      stage('Build and push dev image') {
         when {
            branch 'dev'
         }
         steps {
            sh 'docker build -t dev-image .'
            sh 'docker tag dev-image zehara19/capstone-public-dev:dev-tag'
            withCredentials([usernamePassword(credentialsId: 'dockerhub_id', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
               sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
               sh 'docker push zehara19/capstone-public-dev:dev-tag'
            }
         }
      }
      stage('Build and push prod image') {
         when {
            branch 'main'
         }
         steps {
            sh 'docker build -t prod-image .'
            sh 'docker tag prod-image zehara19/capstone-prod:prod-tag'
            withCredentials([usernamePassword(credentialsId: 'dockerhub_id', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
               sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
               sh 'docker push zehara19/capstone-prod:prod-tag'
            }
         }
      }
   }
}
