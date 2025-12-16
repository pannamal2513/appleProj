pipeline { 
    agent any 
    stages { 
        stage('Checkout') { 
            steps { 
                git branch: 'main', url: 'https://github.com/pannamal2513/appleProj.git' 
            } 
        }         
        stage('Build Docker Image') { 
            steps { 
                sh 'docker build -t php-ubuntu:18.04 –f C:\Users\poora\OneDrive\Desktop\local\gitproject\appleProj 
C:\Users\poora\OneDrive\Desktop\local\gitproject\appleProj'
            } 
        } 
        stage('Deploy Container') { 
            steps { 
                sh ''' 
                docker ps -q --filter "name=php-ubuntu:18.04" | xargs -r docker stop 
                docker ps -aq --filter "name=php-ubuntu:18.04" | xargs -r docker rm 
                docker run -d --name php-ubuntu:18.04 -p 8082:80 php-ubuntu:18.04 
                ''' 
            } 
        } 
    } 
    post { 
        failure { 
            echo 'Build failed! Cleaning up containers...' 
            sh ''' 
            docker ps -q --filter "name=php-ubuntu:18.04" | xargs -r docker stop 
            docker ps -aq --filter "name=php-ubuntu:18.04" | xargs -r docker rm 
            ''' 
        } 
    } 
}
