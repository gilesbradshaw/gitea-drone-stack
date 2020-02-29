mkdir -p ../.certificates
openssl genrsa   -des3   -out ../.certificates/ca.key 4096

openssl req   -x509   -new   -nodes   -key ../.certificates/ca.key   -sha256   -days 10000   -subj "/C=GB/ST=Devon/O=SiGyl/OU=SiGyl/CN=CA"   -out ../.certificates/ca.crt
mkdir -p ../.ca/$1
cp ../.certificates/ca.crt ../.ca/$1
