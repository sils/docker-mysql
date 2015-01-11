FROM mysql
MAINTAINER Lasse Schuirmann <lasse.schuirmann@gmail.com

RUN sed -i 's/\[mysqld\]/[mysqld]\n\
key_buffer_size         = 512M\n\
innodb_buffer_pool_size = 512M\n\
query_cache_type        = 1   \n\
query_cache_limit       = 64M \n\
query_cache_size        = 64M \n\
table_cache             = 512 \n/' /etc/mysql/my.cnf
