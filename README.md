# awspython

Container built from continuumio/anaconda adding boto3 and the aws cli

Note: if building behind a firewall create an apt.conf proxy with your proxy
set up and uncomment the COPY command for apt.conf.

To build the image provide proxy settings on the command line, for example:

<pre>
docker build --build-arg HTTP_PROXY=http://myproxy:4556 -t xtracdev/awspython .
</pre>

To run, you'll want to map a volume to share data between the container and the 
docker host (probably), plus you'll want to map the jupyter notebook
port if you want to access jupyter:

<pre>
docker run -e https_proxy=http://proxy.server.com:4455 -v $PWD:/code -p 8888:8888 -it xtracdev/awspython
</pre>