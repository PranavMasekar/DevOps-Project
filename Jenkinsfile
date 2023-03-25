pipeline {
  agent any
  environment {
    DOCKER_HUB_CREDENTIALS = credentials('docker-hub')
    DOCKER_IMAGE_NAME = 'go-restro'
    DOCKER_IMAGE_TAG = "latest"
    DOCKER_REGISTRY_URL = 'https://index.docker.io/v1/'
  }
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
        }
      }
    }
    stage('Push Docker Image') {
        
      steps {
        script {
          withCredentials([string(credentialsId: 'docker-hub', variable: 'DOCKER_HUB_CREDENTIALS')]) {
            sh "docker login -u ${DOCKER_HUB_CREDENTIALS_USR} -p ${DOCKER_HUB_CREDENTIALS_PSW} ${DOCKER_REGISTRY_URL}"
            sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
          }
        }
      }
    }
  }
}
