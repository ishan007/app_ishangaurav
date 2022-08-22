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


        stage('Sonarqube Analysis'){
            steps{
                echo '--------------- SONARQUBE ANALYSIS STAGE STARTED ----------------'
                withSonarQubeEnv('Test_Sonar'){
                    sh '${scannerHome}/bin/sonar-scanner'
                }
                echo '--------------- SONARQUBE ANALYSIS STAGE FINISHED ----------------'
            }
        }
        
    }

}