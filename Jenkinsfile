pipeline {
    agent any
    stages {
	stage('Compile Java'){
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar -cvfe HelloWorld.war HelloWorld HelloWorld.class'
                }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t hellotomcat .'
           }
        }
        stage('Run Image') {
            steps {
                sh 'docker run -d --name tomcat -p 8080:8080 bitnami/tomcat'
                }
          }
    }
}
