
pipeline {
    agent any


    stages {
        stage('pull') {
            steps {
                // Pull code from GitHub repository
                git 'https://github.com/agashevishwas189-creator/swarajya_tours_travels.git'
                sh 'echo " this is my 1 st time pull stage" > vishwas.txt'
            }
        }
            stage('Build') {
                steps {
                    sh 'echo " this is my 1 st time pull stage" >> vishwas.txt'
                }
            }
            stage('Test') {
                steps {
                    sh 'echo " this is my 1 st time test stage" >> vishwas.txt'
                }
            }
            stage('Deploy') {
                steps {
                    sh 'echo " this is my 1 st time deploy stage" >> vishwas.txt'
                }
            }
        }
    }

