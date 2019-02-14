@Library('ssh_deploy') _

pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                checkout scm
            }
          stage('run') {
            steps {
                sshDeploy('dev/deploy.yml')
            }
        }
    }
}
