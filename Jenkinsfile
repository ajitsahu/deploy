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
            sshCommand remote: remote, command: 'for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done'
            sshScript remote: remote, script: 'test.sh'
            sshPut remote: remote, from: 'test.sh', into: '/usr/local/jenkins/'
            sshGet remote: remote, from: 'test.sh', into: 'test_new.sh', override: true
            sshRemove remote: remote, path: 'test.sh'
        }
    }
}
