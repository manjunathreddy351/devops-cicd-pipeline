# End-to-End DevOps CI/CD Pipeline

A portfolio project demonstrating a practical CI/CD workflow for a containerized Java application.

## Architecture

GitHub → Jenkins → Maven → SonarQube → Nexus → Docker → Amazon ECR → Kubernetes/EKS

Monitoring: Prometheus → Grafana

## Technologies

- Java 17
- Maven
- Git / GitHub
- Jenkins
- SonarQube
- Nexus Repository
- Docker
- Kubernetes
- Amazon ECR
- Amazon EKS
- Terraform
- Ansible
- Prometheus
- Grafana
- Linux

## Project structure

```text
devops-cicd-pipeline/
├── src/
│   └── main/java/com/example/App.java
├── Dockerfile
├── pom.xml
├── Jenkinsfile
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   └── playbook.yml
├── monitoring/
│   └── prometheus.yml
└── README.md
```

## Run locally

```bash
mvn clean package
java -jar target/devops-demo-1.0.jar
```

Build the Docker image:

```bash
docker build -t devops-demo:1.0 .
docker run -p 8080:8080 devops-demo:1.0
```

## Kubernetes

Update the image in `k8s/deployment.yaml` to your registry image, then:

```bash
kubectl apply -f k8s/
kubectl get pods
kubectl get svc
```

## Jenkins pipeline

The Jenkinsfile demonstrates:

1. Checkout
2. Maven build
3. Unit tests
4. SonarQube analysis
5. Docker image build
6. Docker image push
7. Kubernetes deployment

Configure credentials and server URLs in Jenkins before enabling registry or cluster deployment stages.

## Important

This repository is a portfolio/lab project. Replace placeholder registry names, credentials, AWS account information and cluster settings with your own values. Never commit passwords, access keys, kubeconfig files or other secrets.
