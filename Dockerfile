FROM mariadb
MAINTAINER Lasse Schuirmann <lasse.schuirmann@gmail.com

RUN sed -i 's/\[mysqld\]/[mysqld]\
key_buffer_size         = 512M\
innodb_buffer_pool_size = 512M\
query_cache_type        = 1   \
query_cache_limit       = 64M \
query_cache_size        = 64M \
table_cache             = 512 /' /etc/mysql/my.cnf
