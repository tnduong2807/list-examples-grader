MAIN=GradeServer
PATH=student-submission

rm -f *.class

if [ ! -f $MAIN.java ]; then
    echo "No $MAIN.java file found"
    exit 1
fi

javac Server.java $MAIN.java
java $MAIN $1