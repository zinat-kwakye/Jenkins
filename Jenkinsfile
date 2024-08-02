pipeline{
  agent any
  stages{
    stage("Pipeline Stages"){
      steps{
        sh 'docker rm -f flask-app'
        sh 'docker rmi -f flask-app'
        sh 'rm -f trivy-report.json'
      }
    }
    stage("Build Images"){
      steps{
        sh "docker build -t flask-app ."
      }
    }
    stage("Print Working Directory"){
      steps{
        sh "pwd"
      }
    }
    stage("Security Scan"){
      steps {
        sh "trivy fs --format json -o trivy-report.json flask-app . "
      }
    }
    stage("PWD"){
      steps{
        sh "pwd"
      }
    }
    stage("Archive File"){
      steps{
        archiveArtifacts artifacts: 'trivy-report.json'
      }
    }
    stage("List"){
      steps{
        sh "ls -a"
      }
    }
    stage("third stage - run containers"){
      steps{
        sh "docker run -d -p 80:5500 --name flask-app flask-app"
      }
    }  
  }
}
