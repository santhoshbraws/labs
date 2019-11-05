pipeline {
    agent {
        node {
            label 'master'
        }
    }

	stages {

	   	stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }

		stage('git clone') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/ec2;rm -r *;git clone https://github.com/santhoshbraws/labs.git'
            }
        }		


        stage('terraform init') {
            steps {
						withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
            			sh 'terraform init /var/lib/jenkins/workspace/ec2/labs'
               }
			}
        }

        stage('terraform plan') {
            steps {
						withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
            			sh 'terraform plan /var/lib/jenkins/workspace/ec2/labs'
				}
			}
        }
		

        stage('terraform apply') {
            steps {
						withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
            			sh 'terraform apply /var/lib/jenkins/workspace/ec2/labs'
               }
			}
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
    }
}

