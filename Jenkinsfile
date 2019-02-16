@Library('ssh_deploy') _

node {
  checkout scm
  sshDeploy(String dev/deploy.yml);
}
