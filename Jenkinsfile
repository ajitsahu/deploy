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
                booleanParam(name: "dryRun", defaultValue: false)
                sshDeploy('dev/deploy.yml', params.dryRun)
            }
        } 
    }
}
