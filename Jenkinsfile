pipeline {
    agent any
    
    stages {
       
        stage('build docker image') {
	    staps {
	        script {
		    dockerapp = docker.build("suprem3/kube-news:v1${env.BUILD.ID}", '-f ./home/cmopr/estudo/kube-news/Docker file ./kube-news') 

		    }

		}
	    }
	   
	}
    }

}
