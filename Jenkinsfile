pipeline{
  agent any
  stages{
    stage("Pipeline Stages"){
      steps{
        sh 'docker rm -f $(docker ps -aq)'
        sh 'docker rmi -f $(docker images)'
      }
    }
    stage("second stage - build images"){
      steps{
        sh "docker build -t flask-app"
      }
    }
    stage("third stage - run containers"){
      steps{
        sh "docker run -d -p 80:5500 --name flask-app flask-app"
      }
    }  
  }
}
