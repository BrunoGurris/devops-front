pipeline {
  agent any
  stages {
    stage('Clean Docker') {
      steps {
        sh 'docker system prune -a --volumes -f'
      }
    }

    stage('Start Docker') {
      steps {
        sh 'docker compose up -d --build'
      }
    }
  }
}