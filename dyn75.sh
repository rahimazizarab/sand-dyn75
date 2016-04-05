gcc -DHAVE_CONFIG_H -I. -fPIC -fomit-frame-pointer -O3 -march=native -W -Wall -shared -export-dynamic -o dyn75.so dyn75.c tcpip.c dyn75.la
