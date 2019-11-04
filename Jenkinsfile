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

	 stage('terraform copy tfvars') {
            steps {
                sh 'cp /root/terraform.tfvars /root/lab/labs'
            }
        }


        stage('git clone') {
            steps {
                sh 'rm -r *;git clone https://github.com/santhoshbraws/labs.git'
            }
        }
        stage('terraform init') {
            steps {
                sh '/root/terraform init /root/lab/labs'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls /root/lab/labs;/root/terraform plan /root/lab/labs'
            }
        }

	 stage('terraform apply') {
            steps {
                sh 'ls /root/lab/labs;/root/terraform apply /root/lab/labs'
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
