pipeline {
    agent none
    stages {
        stage('Dotnet Build and Test') {
            agent {
                docker { 
                    image 'mcr.microsoft.com/dotnet/sdk:3.1' 
                    args '-u root:root'
                }
            }
            steps {
                sh 'dotnet build'
                sh 'dotnet test'
            }
        }
        stage('Typescript build and Test') {
            agent {
                docker { image 'node:14-alpine'}
            }
            steps {
                sh 'cd /DotnetTemplate.Web'
                sh 'npm run build'
                sh 'npm run lint'
                sh 'npm t'
            }
        }
        stage('Deploy') {
            agent any
            steps {
                echo 'Deploying....'
            }
        }
    }
}