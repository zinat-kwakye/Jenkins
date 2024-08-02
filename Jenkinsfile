pipeline{
  agent any
  stages{
    stage("Remove container & imagw"){
     steps{
        sh 'docker rm nodejs-project || true'
        sh 'docker rmi zinatk/node || true'
      }
    }
    stage("Get image"){
      steps{
        sh 'docker pull zinatk/node'
      }
    }
    stage("Build container"){
      steps{
        sh 'docker build -t zinatk/node .'
      }
    }
    stage("Start running"){
      steps{ 
      sh 'docker run -d -p 80:5000 --name nodejs-project zinatk/node'
      }
    }
  }
}
