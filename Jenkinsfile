pipeline {
    agent any
    stages {
        stage('Destroy') {
            steps {
                sh 'docker stop $(docker ps -a -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker rmi testing'
                sh 'docker system prune'
            }
        }
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

