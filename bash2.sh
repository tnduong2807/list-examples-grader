javac Program.java
echo $?
echo "line 1"
echo $?
echo "line 2"
if [ $? -ne 0 ]; then
echo $?
echo "line 3"
echo "Compilation error, exiting"
echo $?
echo "line 4"
exit 1
echo $?
echo "line 5"
fi
echo $?
echo "line 6"
java Program
echo $?
echo "line 7"