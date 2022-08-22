pipeline {

    agent any

    tools{
        nodejs 'nodejs'
    }

    stages{

        stage('Build'){
            steps{
                echo '---------- BUILD STAGE STARTED --------------'
                sh 'npm --version'
                sh 'node --version'
                sh 'npm install'
                echo '---------- BUILD STAGE FINISHED --------------'                
            }
        }
        
    }

}