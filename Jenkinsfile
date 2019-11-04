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
                sh 'cd /var/lib/jenkins/workspace/ec2;rm -r *;sudo git clone https://github.com/santhoshbraws/labs.git'
            }
        }
		
        stage('terraform copy tfvars') {
            steps {
                sh 'cp /var/lib/jenkins/secrets/terraform.tfvars /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform init') {
            steps {
                sh 'terraform init /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform plan') {
            steps {
                sh 'terraform plan /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform apply') {
            steps {
                sh 'terraform apply /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
    }
}


