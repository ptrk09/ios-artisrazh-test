mkdir -p build
rm -f build/main

mkdir -p out
rm -f out/app_output.txt

swiftc source/main.swift source/CircularRotate.swift -o build/main 

./build/main >> out/app_output.txt