pipeline{
	agent any
	stages{
		stage('Build Docker image') {
			agent {
                dockerfile {
					filename 'Dockerfile'
					dir '.'	
						}
					}										
			steps {
                echo 'ls'
				}
		
		}
		stage('create container'){
			agent {
				docker {
                   reuseNode true
                   image 'mysql'
               }
            }
			steps {
               echo 'done'
            }

        }
		stage('test container') {
			steps {
				sh 'echo exit | telnet localhost 5000'
			}
        } 
	}
	 post {
        always {
            deleteDir()
        }
    }     
}