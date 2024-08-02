pipeline{
  agent any
  stages{
    stage("Pipeline Stages"){
      steps{
        sh 'npm install --save express .'
      }
    }
    stage("second stage"){
      steps{ 
      sh 'node index.js'
      }
    }
  }
}
