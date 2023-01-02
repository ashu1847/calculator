pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
		    sh "chmod +x ./gradlew"   
		    sh "./gradlew wrapper --gradle-version 6.0.1"
              sh "./gradlew compileJava"
               }
          }
     }
		  
stage("Package") {
     steps {
          sh "./gradlew build"
     }
}

stage("Docker build") {
     steps {
	     
          sh "docker build -t nikhilnidhi/calculator_1 ."
     }
}


}
