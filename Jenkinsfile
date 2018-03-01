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
                sh 'docker build -t tomcatjava .'
           }
        }
        stage('Run Image') {
            steps {
                sh 'docker run -d --name tommy -p 8080:8080 tomcatjava'
                }
          }
    }
}
