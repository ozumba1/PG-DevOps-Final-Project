pipeline {
    agent {
        docker {
            image 'maven:3.6.3-adoptopenjdk-11'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
       
   
        }
    }
}
