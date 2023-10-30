pipeline {
    agent any
    stages {
        stage('Prerequisite Image') {
            steps {
                sh 'packer build packer-project/prerequisite-install.json'
            }
        }
        stage('Application Deployment & Image') {
            steps {
                sh 'packer build packer-project/app-install.json'
            }
        }
    }
}
