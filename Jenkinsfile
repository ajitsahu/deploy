def remote = [:]
def isSudo = true
remote.name = "node1"
remote.host = "ajitsahu4c.mylabserver.com"
remote.allowAnyHosts = true
remote.executeSudo = true

node {
    withCredentials([usernamePassword(credentialsId: 'clouduser', passwordVariable: 'password', usernameVariable: 'userName')]) {
        remote.user = userName
        remote.password = password
        stage("Checkout") {
            git 'git@github.com:ajitsahu/deploy.git'
        }
        stage("SSH Steps Rocks!") {
            sshCommand remote: remote, command: 'mkdir -p /usr/local/temp1', sudo: isSudo
            sshScript remote: remote, script: 'test.sh', sudo: isSudo
        }
    }
}
