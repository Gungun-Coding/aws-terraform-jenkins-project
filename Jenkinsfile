pipeline{
    agent any
    stages{
        stage('checkout'){
            steps{
                git ''
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