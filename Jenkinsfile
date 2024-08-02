pipeline{
  agent any
  stages{
    stage("Remove container"){
     steps{
        sh 'docker rm nodejs-project'
      }
    }
    stage("Build container"){
      steps{
        sh 'docker build -t nodejs-project .'
      }
    }
    stage("Start running"){
      steps{ 
      sh 'docker run -p 80:5000 --name nodejs-project -d nodejs-project'
      }
    }
  }
}
