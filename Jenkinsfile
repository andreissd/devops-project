pipeline {
    agent any
    stages {
        stage('Prerequisite Image') {
            steps {
                sh 'packer build packer-project/prerequisite-packer-template.json'
            }
        }
        stage('Application Deployment & Image') {
            steps {
                sh 'packer build packer-project/app-packer-template.json'
            }
        }
    }
}
