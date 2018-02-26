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
                sh 'docker run -d -p 4004:80 hellotomcat'
                }
          }
    }
}
