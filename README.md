## Iodine Docker Server Container 

#Iodine on Ubuntu 14.04 (PreSharedKey)

Build it with:

*docker build -t r4ffy/iodine:v1  ./*


Execute it: 

*docker run --privileged -p 53:53/udp  -d -t r4ffy/iodine:v1*

Enjoy :)
