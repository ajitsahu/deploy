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
                def yaml = readYaml file: yamlName
            }
        } 
    }
}
