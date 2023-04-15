pipeline {
	agent any 

	stages {

		stage ('Build Docker Image') {
			steps {
				script{
					dockerapp = docker.build("suprem3/kube-news:v1", '-f ./home/cmopr/estudos/kube-news/Dockerfile ./home/cmopr/estudos/kube-news')
				}
				
			}
				
		}

	}
}
