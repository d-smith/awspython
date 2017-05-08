awspython - container built from continuumio/anaconda adding boto3 and the aws cli

Note: if building behind a firewall create an apt.conf proxy with your proxy
set up and uncomment the COPY command for apt.conf.

To build the image provide proxy settings on the command line, for example:

<pre>
docker build --build-arg HTTP_PROXY=http://myproxy:4556 -t xtracdev/awspython .
</pre>
