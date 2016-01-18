rm -rf ./test_dir
./bin/fstats
mkdir ./test_dir
dd if=/dev/zero of=./test_dir/file_one bs=1024 count=1 
dd if=/dev/zero of=./test_dir/file_two bs=2048 count=1
dd if=/dev/zero of=./test_dir/file_three bs=2024 count=2050
dd if=/dev/zero of=./test_dir/file_four bs=2048 count=1
./bin/fstats
rm -rf ./test_dir

