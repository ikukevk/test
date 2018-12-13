pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                sh 'docker stop dd-culture-site || true'
                sh 'docker rm dd-culture-site -f || true'
                sh 'docker rmi dd-culture-site || true'
                sh 'docker image prune -f'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t dd-culture-site/ui .'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -d --name dd-culture-site -p 9337:1337 dd-culture-site/ui"
            }
        }
    }
}

