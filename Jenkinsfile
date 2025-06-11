pipeline{
    agent any
    stages {
        stage('git checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/ygminds73/Ekart.git'
            }
        }
        
        stage('terraform init'){
            steps{
                dir('terraform'){
                    sh 'terraform init'
                }
            }
        }
        stage("terraform Apply"){
            steps{
                dir('terraform'){
                    sh 'terraform apply'
                }
            }
        }
    }
    post{
        success{
            echo 'deployed successfully'
        }
        failure{
            echo 'failed'
        }
    }
}
