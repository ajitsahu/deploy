@Library('ssh-deploy-library') _

node {
  checkout scm
  sshDeploy('dev/deploy.yml');
}
