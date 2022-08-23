pipeline {

    agent any

    environment{
        scannerHome = tool 'SonarQubeScanner'
    }

    tools{
        nodejs 'nodejs'
    }

    stages{

        stage('Build'){
            steps{
                echo '---------- BUILD STAGE STARTED --------------'
                sh 'npm install'
                echo '---------- BUILD STAGE FINISHED --------------'                
            }
        }

        stage('Test case execution'){
            when{
                branch 'master'
            }

            steps{
                echo '---------- TEST CASE EXECUTION STAGE STARTED --------------'
                sh 'npm test'
                echo '---------- TEST CASE EXECUTION STAGE FINISHED --------------'
            }
        }

        stage('Sonarqube Analysis'){
            when{
                branch 'develop'
            }

            steps{
                echo '--------------- SONARQUBE ANALYSIS STAGE STARTED ----------------'
                withSonarQubeEnv('Test_Sonar'){
                    sh '${scannerHome}/bin/sonar-scanner'
                }
                echo '--------------- SONARQUBE ANALYSIS STAGE FINISHED ----------------'
            }
        }

        stage('Kubernetes Deployment'){
            steps{
                echo '---------- KUBERNETES DEPLOYMENT STAGE STARTED --------------'
                sh 'kubectl apply -f kubernetes/configmap.yaml'
                sh 'kubectl apply -f kubernetes/secrets.yaml'
                sh 'kubectl apply -f kubernetes/deployment.yaml'
                sh 'kubectl apply -f kubernetes/service.yaml'
                echo '---------- KUBERNETES DEPLOYMENT STAGE FINISHED --------------'
            }
        }
        
    }

}