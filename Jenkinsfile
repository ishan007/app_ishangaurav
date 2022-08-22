pipeline {

    agent any

    tools{
        nodejs 'nodejs'
    }

    stages{

        stage('Build'){
            steps{
                sh 'npm --version'
                sh 'npm install'                
            }
        }
        
    }

}