pipeline {
    agent any

    stages {
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
				script
				{
				         bat "copy C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\java-project-pipeline\\target C:\\apache-tomcat-10.0.16\\webapps"
                	   		 powershell '''
						Restart-Service -Name Tomcat8
					'''
				}
			}
		}
    }
}
