pipeline {
    agent any
    stages {
        stage('Destroy') {
            steps {
                sh 'docker stop $(docker ps -a -q) || true'
                sh 'docker rm $(docker ps -a -q) || true'
                sh 'docker rmi testing || true'
                sh 'docker system prune || true'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t testing https://github.com/ikukevk/test.git#develop'
                
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -d --name testing -p 8008:80 testing"
            }
        }
    }
}

