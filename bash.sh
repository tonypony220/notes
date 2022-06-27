egrep -v "^$|#"

curl -i -H "Authorization: token ${git_token}" https://api.github.com/user/repos -d '{"name":"bot", "private":"true"}'

curl -i -H "Content-Type: application/json" -X POST -d '{"username": "bot2", "password": "1234"}' http://5.45.120.126:5000/api/users
curl -i -H "Content-Type: application/json" -X PUT -d '{"done":true}' http://localhost:5000/todo/api/v1.0/tasks/2

curl -u bo:1234 -i -X GET http://5.45.120.126:5000/api/resource
curl -u 'USER' https://api.github.com/user/repos -d '{"name":"cub3d"}'

# updating time
sudo ntpdate -vu time.apple.com 



You can use the following command:
git checkout HEAD -- my-file.txt
... which will update both the working copy of my-file.txt and its state in the index with that from HEAD.
-- basically means: treat every argument after this point as a file name. More details in this answer. Thanks to VonC for pointing this out.

# will output the buildin configuration of gcc among which are the default includes.
echo "" | gcc -xc - -v -E


# substitute file in place
sed -i '' 's/oldword/newword/' file1.txt
https://unix.stackexchange.com/questions/274120/pipe-fail-141-when-piping-output-into-tee-why
https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/
https://superuser.com/questions/94563/how-to-determine-available-free-space-on-ubuntu
https://serverfault.com/questions/4176/what-sysadmin-things-should-every-programmer-know/4737#4737
https://stackoverflow.com/questions/2150882/how-to-automatically-add-user-account-and-password-with-a-bash-script
netstat -vanp tcp
https://stackoverflow.com/questions/24554614/how-find-out-which-process-is-using-a-file-in-linux
https://www-cyberciti-biz.translate.goog/faq/grep-regular-expressions/?_x_tr_sl=en&_x_tr_tl=ru&_x_tr_hl=ru&_x_tr_pto=nui,op,sc

echo "dddd|aaaa" | cut -d'|' -f2

https://apple.stackexchange.com/questions/3271/how-to-get-rid-of-firewall-accept-incoming-connections-dialog

#ENCRIPT
#   cheap        out  file
gpg -c --output pass passwds
#DEcript
gpg -d passwd.gpg

cp -r !(Default.png|example) /example

https://stackoverflow.com/questions/1313590/bash-copy-all-files-except-one
ls -d */
https://blog.sedicomm.com/2019/04/05/kak-ustanovit-i-nastroit-chastnyj-anonimnyj-proksi-server-squid-na-baze-linux-ubuntu-debian/
https://medium.com/@petehouston/upload-files-with-curl-93064dcccc76
