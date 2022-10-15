pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/tush6016/project-deployment.git']]])
            }
        }
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }    
        stage('action') {
            steps {
                echo "Terraform action is --> ${action}"
                sh "terraform ${action} --auto-approve"
            }
        }
    }
}
