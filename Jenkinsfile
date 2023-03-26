pipeline {
  agent any
  environment {
    DOCKER_HUB_CREDENTIALS = credentials('docker-hub')
    DOCKER_IMAGE_NAME = 'pranav18vk/go-restro'
    DOCKER_IMAGE_TAG = "latest"
    DOCKER_REGISTRY_URL = 'https://index.docker.io/v1/'
  }
  stages {
    // stage('Build Docker Image') {
    //   steps {
    //     script {
    //       sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
    //     }
    //   }
    // }
    // stage('Push Docker Image') {
    //   steps {
    //     script {
    //       withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_HUB_CREDENTIALS_USR', passwordVariable: 'DOCKER_HUB_CREDENTIALS_PSW')]) {
    //         sh "echo ${DOCKER_HUB_CREDENTIALS_PSW} | docker login -u ${DOCKER_HUB_CREDENTIALS_USR} --password-stdin ${DOCKER_REGISTRY_URL}"
    //         sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
    //       }
    //     }
    //   }
    // }
    stage('Ansible'){
      steps {
        sh 'ls -a'
        sh 'ansible-playbook -i terraform/hosts Ansible/create.yaml'
      }
    }
  }
}
