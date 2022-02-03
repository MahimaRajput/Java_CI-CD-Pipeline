pipeline {
    agent any

    stages {
	     stage('Checkout') 
		{
			steps 
			{
				git branch: 'master',
				credentialsId: '0f5a239d-86ca-4a61-bad1-a36f80b67ac6',
				url: 'https://github.com/MahimaRajput/Project_example'
				
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
	    
	    stage('Docker Build') 
		{
			steps 
			{
			    script
			    {
			        bat "docker build -t mahimarajput26/docker_repo:${BUILD_NUMBER} ."
				bat "docker build -t mahimarajput26/docker_repo:latest ."
			      
			    }
			}
		} 
	    stage('Docker Push') 
		{
			steps 
			{
			    script
			    {
					withCredentials([string(credentialsId: 'Doc-psw', variable: 'dockerpassword')]) {
					  bat "docker login -u mahimarajput26 -p ${dockerpassword}"
					  bat "docker push mahimarajput26/docker_repo:${BUILD_NUMBER}"
					  bat "docker push mahimarajput26/docker_repo:latest"	
					}
			    }
			}
		}
	      stage('Docker deploy') 
		{
			steps 
			{
			    script
			    {
			        bat "docker-compose up -d"
				
			    }
			}
		}
    }
}
