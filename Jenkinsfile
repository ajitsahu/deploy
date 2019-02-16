@Library('ssh_deploy') _

pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('run') {
            steps {
                sshDeploy('dev/deploy.yml', ${params.dryRun})
            }
        } 
    }
}
