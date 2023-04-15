pipeline {
    agent any

    stages {
        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("suprem3/kube-news:${env.BUILD_ID}", '-f ./kube-news/src/Dockerfile ./kube-news/src') 
                }                
            }
        }
	}
}