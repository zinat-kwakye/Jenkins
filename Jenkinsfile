pipeline{
  agent any
  stages{
    stage("k8s"){
     steps{
        withKubeCredentials(kubectlCredentials: [[caCertificate:",clusterName:';cluster',contextName:", credentialsId: 'jenkins-kbs', namespace: 'default', serverUrl:'https://53B639569AEB9EEEB64B85F8EAE23785.gr7.eu-west-2.eks.amazonaws.com']])
       {
         sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.20.5/bin/linux/amd64/kubectl"'
         sh 'chmod u+x ./kubectl'
         sh './kubectl get nodes'
         sh '.kubectl create -f pod.yaml'
         sh './kubectl get pods'
       }
     }
   } 
  }
}
