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
        stage('Maven Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Docker Deployment') {
            steps {
                sh 'docker build -t goutam/springboot:latest .'
            }
        }
    }
}