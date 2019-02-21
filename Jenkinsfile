@Library('ssh_deploy') _

node {
  stage('Clone sources') {
    // Clone deploy repo
    git 'git@github.com:ajitsahu/deploy.git'
  }
  stage('Deploy') {
    // Depoy code 
    sshDeploy('dev/deploy.yml', false);
  }
  stage('Read file') {
    steps {
      shell(readFileFromWorkspace('test.sh'))
    }
  }
}
