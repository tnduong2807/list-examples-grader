# Create your grading script here

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
