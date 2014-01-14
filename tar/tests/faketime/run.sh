rm -f test.tar 
echo "RUN" && ../../src/tar --owner root --group root  --numeric-owner --faketime "2013-01-01 01:00:01" -c -f test.tar EXAMPLEDIR && tar -t -v -f test.tar
echo "RUN-Append" && ../../src/tar --owner root --group root  --numeric-owner --faketime "2013-01-01 01:00:01" -rf test.tar appendexampledir && tar -t -v -f test.tar
