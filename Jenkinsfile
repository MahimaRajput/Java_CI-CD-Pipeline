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
        stage('deploy') {
            steps {
                echo 'deploy project'
                 bat "mvn deploy"
            }
        }
    }
}
