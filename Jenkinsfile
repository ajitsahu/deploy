@Library('ssh_deploy') _

node {
  checkout scm
  def yaml = readYaml file: 'deploy.yml'
  sshDeploy(yaml);
}
