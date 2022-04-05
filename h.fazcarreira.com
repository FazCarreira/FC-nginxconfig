server {
    listen 80;
    listen [::]:80;

    root /var/www/html/h.fazcarreira.com;

    index index.html;

    server_name h.fazcarreira.com.conf;

     access_log /var/log/nginx/h.fazcarreira.com.access.log;

     error_log /var/log/nginx/h.fazcarreira.com.error.log;

    location / {
        try_files $uri $uri/ /index.html =404;
    }
}
