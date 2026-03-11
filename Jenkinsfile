pipeline {
    agent any

    tools {
        maven 'Maven3'  // Must match EXACTLY what you name it in Jenkins Global Tools
    }

    stages {

        stage('Checkout') {
            steps {
                echo '📥 Pulling code from GitHub...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo '🔨 Building WAR file with Maven...'
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo '🚀 Deploying WAR to Tomcat on port 8088...'
                bat '''
                    net stop Tomcat10 || echo "Already stopped, continuing..."

                    if exist "C:\\Tomcat 10\\webapps" (
                        rmdir /S /Q "C:\\Tomcat 10\\webapps"
                    )
                    if exist "C:\\Tomcat 10\\webapps\\springboot-demo.war" (
                        del "C:\\Tomcat 10\\webapps\\springboot-demo.war"
                    )

                    copy /Y target\\springboot-demo.war "C:\\Tomcat 10\\webapps\\springboot-demo.war"

                    net start Tomcat10
                '''
            }
        }
    }

    post {
        success {
            echo '✅ SUCCESS! Visit: http://localhost:8088/springboot-demo'
        }
        failure {
            echo '❌ FAILED. Scroll up to see what went wrong.'
        }
    }
}