


openssl genrsa -out ../.certificates/gitea.key 2048
openssl req -new -sha256 -key ../.certificates/gitea.key -subj "/C=GB/ST=Devon/O=SiGyl/OU=Gitea/CN=$1"  -out ../.certificates/gitea.csr

openssl x509 -req   -in ../.certificates/gitea.csr   -CA ../.certificates/ca.crt   -CAkey ../.certificates/ca.key   -CAcreateserial   -out ../.certificates/gitea.crt   -days 10000   -sha256