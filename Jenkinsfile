pipeline {
    agent any

    stages {
	     stage('Checkout') 
		{
			steps 
			{
				git branch: 'main',
				credentialsId: '0f5a239d-86ca-4a61-bad1-a36f80b67ac6',
				url: 'https://github.com/MahimaRajput/demo-project/edit/master/Jenkinsfile'
				
				stash includes: '**', name: 'builtSources'
			}
		}
        stage('build') {
            steps {
                echo 'build project'
             bat "mvn install"
                
            }
        }
        stage('test') {
            steps {
                echo 'test project'
                bat "mvn test"
            }
        }
       stage('Deploy')
		{
			steps
			{
			
				        echo 'deploy project'
				
			}
		}
    }
}
