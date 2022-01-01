#bin
version='2.3.3'
rm *.tar.gz
wget https://github.com/mingmingge891/porttran/archive/refs/tags/$version.tar.gz
tar -zxvf $version.tar.gz
mv porttran-$version/porttranfree/portdir.sh porttran-$version/porttranfree/porttran
mkdir porttran && chmod 777 porttran
mv porttran-$version/porttranfree/* porttran
cd porttran-$version/porttranfree/porttran && chmod +x porttran
cd ../..
rm -rf porttran-$version
rm $version.tar.gz
clear
echo "======================================="
echo "download complete,please perform the following steps"
echo "step:1 cd porttran/"
echo "step:2 run like this ./porttran port ip:port "
echo "more help please open readme.txt"
echo "======================================="
rm porttranfree.sh