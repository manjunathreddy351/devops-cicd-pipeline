pipeline {
    agent any

    environment {
        IMAGE_NAME = 'devops-demo'
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                echo 'Configure your SonarQube server and scanner before enabling this stage.'
                // sh 'mvn sonar:sonar'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }

        stage('Push to Registry') {
            steps {
                echo 'Configure Amazon ECR credentials and registry URL before enabling push.'
                // sh 'docker tag ${IMAGE_NAME}:${IMAGE_TAG} <ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/${IMAGE_NAME}:${IMAGE_TAG}'
                // sh 'docker push <ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/${IMAGE_NAME}:${IMAGE_TAG}'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo 'Configure kubectl/kubeconfig or Jenkins Kubernetes credentials before deployment.'
                // sh 'kubectl apply -f k8s/'
            }
        }
    }

    post {
        always {
            echo "Pipeline completed: ${currentBuild.currentResult}"
        }
    }
}
