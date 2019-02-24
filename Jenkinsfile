@Library('ssh_deploy') _

node {
  checkout scm
  sshDeploy('dev/deploy.yml');
}
