# Lab Report 5

## This is my grade.sh file: 

```
set -e

rm -rf student-submission
git clone $1 student-submission

cd student-submission
cp ../TestListExamples.java

if [[ -f ListExamples.java]];
then
    echo "Found ListExamples.java!"
else 
    echo "File ListExamples.java not found!"
    echo "Grade: 0"
    echo "Please resubmit!"
    exit 1
fi

javac -cp .:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar *.java

if [[ $? -eq 0 ]];
then 
    echo "Files complile successful!"
else
    echo "Files can't compile!!!"
    exit 2
fi

java -cp .:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples > grades.txt 

if [[ $? -eq 0]];
then
    echo "Tests Passed!"
    echo "Grade:"
    cat grades.txt
    exit
else
    echo "Tests not Passed!"
    echo "Grade: 0/2"
    exit 3
fi
```


!["First screenshoot of submission"](https://github.com/tnduong2807/list-examples-grader/blob/main/Screenshot%20(77).png?raw=true)


!["Second screenshoot of submission"](https://github.com/tnduong2807/list-examples-grader/blob/main/Screenshot%20(79).png?raw=true)



!["Third screenshoot of submission"](https://github.com/tnduong2807/list-examples-grader/blob/main/Screenshot%20(80).png?raw=true)



**I believe all of my screenshots of three different students submissions is showing up errors because in their repository on github don't have file ListExamples and also my computer run on window. I try to find different students repository that have file ListExamples.java but most of them don't have it**

I could trace my script...
First Line is used to stop execution instatly as a query exits while having a non-zero status.
Next is remove student-submission folder from the repository. Then use command git clone to clone the repository of the link into the folder student-submission. Next is copy my TestListExamples.java file into the student-submission folder. Then go inside the student-submission folder. If the program can find the ListExamples.java file, it will echo "Found ListExamples.java" or it will echo the other and exit. Then my script will use the library to compile all the file in the student-submission folder. If it compiled, it will echo "Files compile sucessful" else it will echo the rest and exit. Next it will use the library to run the test cases and direct the result into the result.txt file. Next if it all the testcases run and don't show any error, It will echo "Tests Passed!" and cat the contents inside of the grades.txt file or else it will echo the rest and exit. 


