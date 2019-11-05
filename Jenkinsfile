pipeline {
    agent {
        node {
            label 'master'
        }
	environment {
		AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
		AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        
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
            	sh 'export ${env.AWS_ACCESS_KEY_ID}'
				sh 'export ${env.AWS_SECRET_ACCESS_KEY}'
				sh 'terraform init /var/lib/jenkins/workspace/ec2/labs'
        	}
        }

        stage('terraform plan') {
            steps {
            	sh 'export ${env.AWS_ACCESS_KEY_ID}'
				sh 'export ${env.AWS_SECRET_ACCESS_KEY}'
           		sh 'terraform plan /var/lib/jenkins/workspace/ec2/labs'
			}
        }
		

        stage('terraform apply') {
            steps {
            	sh 'export ${env.AWS_ACCESS_KEY_ID}'
				sh 'export ${env.AWS_SECRET_ACCESS_KEY}'
				sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/ec2/labs'
			}
        }

        stage('terraform ended') {
            steps {
					sh 'echo "Ended....!!"'
            }
        }
    }
}

