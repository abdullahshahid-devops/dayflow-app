pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                sh '''
                    test -f dayflow/index.html
                    grep -qi "<html" dayflow/index.html
                    grep -qi "<title" dayflow/index.html
                '''
                echo 'DAYFLOW validation successful'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t dayflow:jenkins-test .'
            }
        }

        stage('Verify Image') {
            steps {
                sh 'docker image inspect dayflow:jenkins-test'
                echo 'DAYFLOW Docker image verified'
            }
        }
    }
}
