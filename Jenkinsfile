@Library('ssh_deploy') _

node {
  ansiColor('xterm') {
    // Just some echoes to show the ANSI color.
    stage "\u001B[31mI'm Red\u001B[0m Now not"
  }
  stage('Clone sources') {
    // Clone deploy repo
    git 'git@github.com:ajitsahu/deploy.git'
  } 
  stage('Send script to remote') {
    // send file to remote servers
    sshPut remote: remote, from: 'test.sh', into: '/usr/local/script/'
  }
  stage('Deploy') {
    // Depoy code 
    sshDeploy('dev/deploy.yml', false);
  }
}
