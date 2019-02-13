@Library('ssh_deploy') _
import ssh_deploy

node {
    checkout scm
    sshDeploy('dev/deploy.yml');
}
