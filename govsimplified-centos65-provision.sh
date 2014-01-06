#!/bin/bash

# Enable Debugging
set -x 

# Install the gvs sub toolbox


# Enable the gvs sub toolbox


# Download fresh copy of database and import
gvs data migrate to-local govsimplified

# Make sure mysqld, memcached, and httpd start on boot
chkconfig httpd on
chkconfig mysqld on
chkconfig memcached on

# Start above three services
/etc/init.d/httpd restart
/etc/init.d/memcached restart
/etc/init.d/mysqld restart


