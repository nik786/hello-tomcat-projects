k=`aws ecr get-login`
s=`echo $k |  sed 's/-e//' | sed 's/none//' | sed 's/docker//' | sed 's/login//' | sed 's/-u//' | sed 's/AWS//' | sed 's/-p//'`

#echo $p

docker login -u AWS -p $s


