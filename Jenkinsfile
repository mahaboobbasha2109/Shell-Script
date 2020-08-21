pipeline{
    agent{
        label "Cart-Ci"
    }
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }

    environment {
        APP_VERSION = "1.0"
        SSH = credentials('SSH-CENTOS')
    }

    tools {
        maven 'MVN'
    }

    stages{
        stage("Stage 1"){
            environment {
                APP_VERSION = "2.0"
            }
            steps{
                sh 'env'
            }
        }

        stage('Maven Version') {
            steps {
                sh 'mvn --version'
            }
        }

stage('Input') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }
            steps {
                echo "Hello, ${PERSON}, nice to meet you."
            }
        }

        stage('Skip Maven') {
            when {
                environment name: 'CHOICE', value: 'One'
            }
            steps {
                sh 'mvn --version'
            }    
        }

        stage('Example Deploy') {
            when {
                beforeInput true
                branch 'production'
            }
            input {
                message "Deploy to production?"
                id "simple-input"
            }
            steps {
                echo 'Deploying'
            }
        }
    } 
}          