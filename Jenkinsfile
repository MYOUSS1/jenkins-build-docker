node {
    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("xavki/nginx")
    }

    stage('Test image') {
        docker.image("xavki/nginx").withRun('-p 8080:80') {
            sh 'docker ps'
            sh 'curl localhost'
        }
    }
}

