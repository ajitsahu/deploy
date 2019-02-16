@Library('ssh_deploy') _

node {
  checkout scm
  def yaml = readYaml file: 'dev/deploy.yml'
  sshDeploy(yaml);
}
