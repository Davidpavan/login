pipeline{
  agent {
    label 'JAVA'
  }
  tools {
          go 'go-1.11'
      }
      environment {
          GO111MODULE = 'on'
      }

  stages{
   stage('Downloading dependencies'){
       steps{
         sh '''
         go build
         '''
       }
     }
   stage('Preparing Artifacts'){
     steps{
       sh '''
       zip -r login.zip *
       '''
     }
   }
   stage('Upload Artifacts'){
     steps{
       sh '''
       curl -f -v -u admin:admin123 --upload-file login.zip http://192.168.0.84:8081/repository/login/login.zip
       '''
     }
   }
  }
}