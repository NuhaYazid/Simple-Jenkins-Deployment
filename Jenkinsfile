pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Pulling code from GitHub...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building WAR file with Maven...'
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo 'Deploying WAR to Tomcat...'
                bat 'copy /Y target\\springboot-demo.war "C:\\Tomcat 10\\webapps\\springboot-demo.war"'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS! Visit: http://localhost:8088/springboot-demo/'
        }
        failure {
            echo 'FAILED. Scroll up to see what went wrong.'
        }
    }
}