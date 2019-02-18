@Library('ssh_deploy') _

node {
  ansiColor('xterm') {
        // Just some echoes to show the ANSI color.
        stage "\u001B[31mI'm Red\u001B[0m Now not"
  }
  stage('Clone sources') {
    git 'git@github.com:ajitsahu/deploy.git'
  } 
  stage('Deploy') {
    sshDeploy('dev/deploy.yml', false);
  }
}
