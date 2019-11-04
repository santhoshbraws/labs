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
                sh 'git clone https://github.com/santhoshbraws/labs.git'
            }
        }
		
        stage('terraform copy tfvars') {
            steps {
                sh 'cp /root/terraform.tfvars /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform init') {
            steps {
                sh '/root/terraform init /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform plan') {
            steps {
                sh '/root/terraform plan /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform apply') {
            steps {
                sh '/root/terraform apply /var/lib/jenkins/workspace/ec2'
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
    }
}


