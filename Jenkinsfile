
node {
	def application = "xyzimage"
	def dockerhubaccountid = "neelimadevi909"
	stage('Clone repository') {
		checkout scm
	}

	stage('Build image') {
		app = docker.build("${dockerhubaccountid}/${application}:${BUILD_NUMBER}")
	}

	
	
	
}
