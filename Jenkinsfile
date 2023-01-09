pipeline {
    agent any

    stages {
        stage('Build and Tag Stack Orchestrator container images') {
            environment {
                HTTP_PROXY = "http://proxy.lan.vdb.to:8080/"
                HTTPS_PROXY = "http://proxy.lan.vdb.to:8080/"
                http_proxy = "http://proxy.lan.vdb.to:8080/"
                https_proxy = "http://proxy.lan.vdb.to:8080/"
                NODE_AUTH_TOKEN = credentials('GITHUB_BASTION_PAT')
                GITEA_JENKINS_PUBLISH = credentials('GITEA_JENKINS_PUBLISH')
            }
            steps {
                script{
                    //including withRegistry block for now... currently not authenticating or pushing to git.vdb.to
                    docker.withRegistry('https://git.vdb.to'){
                        echo 'Building foundation base node 16 image...'
                        def foundation_image = docker.build("cerc-io/cerc-builder-js:jenkinscicd", "--build-arg VARIANT=16 app/data/container-build/cerc-builder-js")
                        echo 'built foundation image'
                    }
                }
            }
        }
    }
}