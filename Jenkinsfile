def remote = [:]
remote.name = "node1"
remote.host = "ajitsahu4c.mylabserver.com"
remote.allowAnyHosts = true

node {
    withCredentials([usernamePassword(credentialsId: 'clouduser', passwordVariable: 'password', usernameVariable: 'userName')]) {
        remote.user = userName
        remote.password = password
        stage("checkout") {
            git 'git@github.com:ajitsahu/deploy.git'
        } 

        stage("SSH Steps Rocks!") {
            sshPut remote: remote, from: 'test.sh', into: '/usr/local/jenkins/'
            sshCommand remote: remote, command: 'sh /usr/local/jenkins/test.sh'
            sshRemove remote: remote, path: '/usr/local/jenkins/test.sh'
        }
    }
}
