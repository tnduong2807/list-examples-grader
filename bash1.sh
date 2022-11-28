javac Program.java
echo $?
echo "line 1"
if [ $? -ne 0 ]; then
echo $?
echo"line 2"
echo "Compilation error, exiting"
echo $?
echo "line 3"
exit 1
echo $?
echo "line 4"
fi
echo $?
echo "line 5"
java Program
echo $?
echo "line 6"