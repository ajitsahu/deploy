@Library('ssh_deploy') _

pipeline {
    agent any
    
    parameters {
        booleanParam(name: "dryRun", defaultValue: false, description: "")
    }
    
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('run') {
            steps {
                sshDeploy('dev/deploy.yml', params.dryRun);
            }
        } 
    }
}
