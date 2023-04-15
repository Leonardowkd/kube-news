pipeline {
	agent any 

	stages {

		stage ('Build Docker Image') {
			steps {
				script{
					dockerapp = docker.build("suprem3/kube-news:${env.BUILD_ID}", '-f ./home/cmopr/estudos/kube-news/Dockerfile ./home/cmopr/estudos/kube-news')
				}
				
			}
				
		}

	}
}
