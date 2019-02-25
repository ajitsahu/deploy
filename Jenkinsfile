@Library('ssh_deploy') _

node {
  stage("checkout") {
    git 'git@github.com:ajitsahu/deploy.git'
  }
  stage("Deploy") {
    sshDeploy('deploy.yml', false);
  }
}
