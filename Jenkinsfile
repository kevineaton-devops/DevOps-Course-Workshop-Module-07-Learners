pipeline {
    agent {
        docker { image 'mcr.microsoft.com/dotnet/sdk:3.1' }
    }

    stages {
        stage('Build') {
            steps {
                sh 'dotnet build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}