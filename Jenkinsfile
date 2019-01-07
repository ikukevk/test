pipeline {
  agent any
  node {
    writeFile file: 'groovy1.txt', text: 'Working with files the Groovy way is easy.'
    sh 'ls -l groovy1.txt'
    sh 'cat groovy1.txt'
  }
}
