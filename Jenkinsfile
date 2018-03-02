pipeline {
    agent any
    stages {
	stage('Compile Java'){
            steps {
                sh 'cd helloworld && jar -cvf HelloWorld.war .'
		sh 'cd ..'
                }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t tomcatjava .'
           }
        }
        stage('Run Image') {
            steps {
                sh 'docker run -d -p 4000:8080 tomcatjava'
                }
          }
    }
}
