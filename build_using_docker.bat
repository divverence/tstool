docker build . -t tstool --rm --force-rm
docker create --name tstool tstool
if not exist bin mkdir bin
docker cp tstool:/out/bin/tstool bin/
docker rm tstool
docker rmi tstool
