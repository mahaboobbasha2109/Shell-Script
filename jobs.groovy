pipelineJob("Cart-CI") {
  description('CIJOB Cart Service')
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url("https://github.com/mahaboobbasha2109/Shell-Script.git")
          }
          branch("*/master")
        }
      }
      scriptPath("Jenkinsfile")
    }
  }
}

pipelineJob("Catalogue-CI") {
  description('CIJOB Catalogue Service')
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url("https://github.com/mahaboobbasha2109/Shell-Script.git")
          }
          branch("*/master")
        }
      }
      scriptPath("Jenkinsfile")
    }
  }
}
