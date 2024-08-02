pipeline{
  agent any
  stages{
    stage("Pipeline Stages"){
      steps{
        sh 'docker rm -f flask-app'
        sh 'docker rmi -f flask-app'
      }
    }
    stage("second stage - build images"){
      steps{
        sh "docker build -t flask-app ."
      }
    }
    stage("third stage - run containers"){
      steps{
        sh "docker run -d -p 80:5500 --name flask-app flask-app"
      }
    }  
  }
}
