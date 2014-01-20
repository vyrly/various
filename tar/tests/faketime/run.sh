rm -f test.tar 
echo "RUN FAKETIME-ZERO" && ../../src/tar --owner root --group root  --numeric-owner --faketimezero "" -c -f test.tar EXAMPLEDIR && tar -t -v -f test.tar
echo "RUN FAKETIME" && ../../src/tar --owner root --group root  --numeric-owner --faketime "2013-01-01 01:00:01" -c -f test1.tar EXAMPLEDIR && tar -t -v -f test1.tar
echo "RUN-Append" && ../../src/tar --owner root --group root  --numeric-owner --faketimezero "" -rf test.tar appendexampledir && tar -t -v -f test.tar
