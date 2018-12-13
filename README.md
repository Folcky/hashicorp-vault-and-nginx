# vault_nginx
hashicorp vault behind nginx


How to get vault with https://myhost/vault address? non-root web url

* config.hcl - vault server configuration  
* vault.location - location for vault service definiton in nginx  


### Server config
1. api_addr = "http://127.0.0.1/vault/v1"  
2. tls_disable = 1  
3. proxy_protocol_behaviour = "use_always"  


### Nginx service location
1. location /vault/ {  
2. proxy_pass http://127.0.0.1:32765/;
3. proxy_redirect /ui/ /vault/ui/;
4. sub_filter '<head>' '<head><base href="/vault/">';  
5. sub_filter '"/ui/' '"ui/';  
6. sub_filter_once off;  


### Nginx service additional location
1. location /v1 {  
2. proxy_pass http://127.0.0.1:32765;
