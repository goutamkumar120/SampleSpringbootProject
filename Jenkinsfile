pipeline {
    agent any
    tools {
        maven 'Maven 3.8.8' // Assuming you already have this configured
        jdk 'JDK 21' // Add this line with the name you configured in Jenkins tools
    }
    stages {
        stage('Git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/goutamkumar120/SampleSpringbootProject.git'
            }
        }
        stage('Maven Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Maven Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Maven Deploy') {
            steps {
                echo " Deploying the war file to the server"
            }
        }
    }
}