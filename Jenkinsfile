pipeline {

    agent any

    environment{
        scannerHome = tool 'SonarQubeScanner'
        branchName = env.BRANCH_NAME
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
                branchName = 'master'
            }

            steps{
                echo '---------- TEST CASE EXECUTION STAGE STARTED --------------'
                sh 'npm test'
                echo '---------- TEST CASE EXECUTION STAGE FINISHED --------------'
            }
        }

        stage('Sonarqube Analysis'){
            when{
                branchName = 'develop'
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
                
                echo '---------- KUBERNETES DEPLOYMENT STAGE FINISHED --------------'
            }
        }
        
    }

}