glusterrestd server in Docker.  

https://github.com/aravindavk/glusterfs-rest/tree/master/glusterfsrest  

# Usage
You can change credentials with ROOT_USER and ROOT_PASSWORD env variables. Defaults are *docker/docker*.  

## Using docker run
`docker run -v /var/run/glusterd.socket:/var/run/glusterd.socket -p 9000:9000 hjdr4/docker-glusterrestd`

## Using docker-compose
`docker-compose -f compose.yml up -d`

# Licence
MIT 