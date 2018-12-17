pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t testing .'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -d --name testing -p 8008:80 testing"
            }
        }
    }
}

