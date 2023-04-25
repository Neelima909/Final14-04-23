
node {
	def application = "xyzimage"
	def dockerhubaccountid = "neelimadevi909"
	stage('Clone repository') {
		checkout scm
	}

	stage('Build image') {
		app = docker.build("${dockerhubaccountid}/${application}:${BUILD_NUMBER}")
	}

	stage('Push image') {
		withDockerRegistry([ credentialsId: "DockerHubcred", url: "" ]) {
		app.push()
		
	}
	}

	stage('Deploy') {
		sh ("docker run -d -p 81:8090 ${dockerhubaccountid}/${application}:${BUILD_NUMBER}")
	}
	
	
}
