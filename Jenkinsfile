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
                sh 'sudo rm -r *;sudo git clone https://github.com/santhoshbraws/labs.git'
            }
        }
		
        stage('terraform copy tfvars') {
            steps {
                sh 'sudo cp /root/terraform.tfvars /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform init') {
            steps {
                sh 'sudo /root/terraform init /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform plan') {
            steps {
                sh 'sudo /root/terraform plan /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform apply') {
            steps {
                sh 'sudo /root/terraform apply /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
    }
}


