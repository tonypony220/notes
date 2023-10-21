# HOW SET UP WEBHOOK

# https://stackoverflow.com/questions/33256898/telegram-bot-on-openssl/33260827#33260827
# https://stackoverflow.com/questions/33932007/telegram-bot-api-webhooks-self-signed-certificate-issue
# https://stackoverflow.com/questions/33256898/telegram-bot-on-openssl/33260827#33260827
# https://core.telegram.org/bots/api
# https://core.telegram.org/bots/webhooks

# https://github.com/TelegramBots/Telegram.Bot.Framework/blob/master/docs/wiki/deployment/ubuntu-nginx-selfsigned.md
openssl req -newkey rsa:2048 -sha256 -nodes -keyout sample-echobot.key -x509 -days 365 -out sample-echobot.pem -subj "/C=DE/ST=Ontario/L=Toronto/O=Telegram Bot Framework Organization/CN=4ayn.l.time4vps.cloud"

sudo mkdir /etc/nginx/certificates
sudo cp sample-echobot.{key,pem} /etc/nginx/certificates
sudo chown www-data:www-data /etc/nginx/certificates/sample-echobot.{key,pem}
sudo chmod 400 /etc/nginx/certificates/sample-echobot.key

# cert .pem file which uploaded to telegram has to be the same which nginx has - same rights, etc !!!!!!

curl -F "url=https://4ayn.l.time4vps.cloud/bot" -F "certificate=@/etc/nginx/certificates/sample-echobot.pem" https://api.telegram.org/bot6174589688:AAF4mdkTiwv3zLEM3gbdWdQabkMeRyS3n6A/setWebhook

# seems if cert not fits nothing happened.
# if app not respond next try would be after some time 

# -------------------------- nginx.conf ------------------------------
#server {
		#listen      80;
		#listen      88 ssl;
		#listen      443 ssl;
		#server_name  4ayn.l.time4vps.cloud localhost;

		#ssl_certificate     /etc/nginx/certificates/sample-echobot.pem;
		#ssl_certificate_key /etc/nginx/certificates/sample-echobot.key;
		#ssl_protocols TLSv1.2 TLSv1.1 TLSv1;
		#ssl_prefer_server_ciphers on;

		#location /bot {
			#proxy_pass http://localhost:3001;  # not ...3001/ !!!!!!
			#proxy_set_header Host $http_host;
            #proxy_redirect off;
            #proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            #proxy_set_header X-Real-IP $remote_addr;
            #proxy_set_header X-Scheme $scheme;
		#}
	#}
