pipeline{
  agent any
  stages{
    stage("Pipeline Stages"){
      steps{
        sh "ls"
      }
    }
    stage("second stage"){
      steps{
        sh "pwd"
      }
    }
    stage("third stage"){
      steps{
        sh "touch example.txt"
      }
    }
    stage("fourth stage"){
      steps{
        sh "echo example.txt"
      }
    }
    stage("fifth stage"){
      steps{
        sh "mv example.txt new.txt"
      }
    }   
  }
}
