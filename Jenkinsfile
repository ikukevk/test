pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
           writeFile file: '.env', text: "test"      
      }
    }
  }
}
