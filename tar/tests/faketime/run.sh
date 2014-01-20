rm -f test.tar 
echo "RUN TEST-TIME" && ../../src/tar --owner root --group root  --numeric-owner --faketime-reference "asd.txt" -c -f testt.tar EXAMPLEDIR && tar -t -v -f testt.tar
echo "RUN FAKETIME-ZERO" && ../../src/tar --owner root --group root  --numeric-owner --faketime-zero -c -f test.tar EXAMPLEDIR && tar -t -v -f test.tar
echo "RUN FAKETIME" && ../../src/tar --owner root --group root  --numeric-owner --faketime "2013-01-01 01:00:01" -c -f test1.tar EXAMPLEDIR && tar -t -v -f test1.tar
echo "RUN-Append" && ../../src/tar --owner root --group root  --numeric-owner --faketime-zero -rf test.tar appendexampledir && tar -t -v -f test.tar
echo "RUN-Sort" && ../../src/tar --owner root --group root  --numeric-owner --sort-input -rf testsort.tar EXAMPLEDIR && tar -t -v -f testsort.tar
