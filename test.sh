rm -rf ./test_dir
./bin/fstats
mkdir ./test_dir
dd if=/dev/zero of=./test_dir/file_one bs=1024 count=1 >& /dev/null
dd if=/dev/zero of=./test_dir/file_two bs=2048 count=1 >& /dev/null
dd if=/dev/zero of=./test_dir/file_three bs=2024 count=2050 >& /dev/null
dd if=/dev/zero of=./test_dir/file_four bs=2048 count=2050 >& /dev/null
./bin/fstats
rm -rf ./test_dir/file_three
rm -rf ./test_dir/file_four
./bin/fstats
rm -rf ./test_dir

