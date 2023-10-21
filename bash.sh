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


# sed 
sed -i -e 's/abc/XYZ/g' /tmp/file.txt
# from MACOS 
sed -i '' 's/abc/XYZ/g' /tmp/file.txt

# substitute file in place
sed -i '' 's/oldword/newword/' file1.txt
#  delete from a text file, all lines that contain a specific string
sed -i '' '/pattern to match/d' ./infile

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
curl -k url (ignoring SSL cert valid)

lsof -c processname
# MACOS netssstat  ntlp
netstat -p tcp -van
lsof -iTCP:$PORT -sTCP:LISTEN
lsof -i -P | grep LISTEN
lsof -nP -i
https://askubuntu.com/questions/1459/how-can-you-monitor-total-internet-data-usage-across-reboots

rsync -av root@$cont:~/notes .
crontab -e 
https://crontab.guru/every-day-8am
#	So to run a command every Monday at 5:30 in the afternoon:
30 17 * * 1 /path/to/command
#	or every 15 minutes
*/15 * * * * /path/to/command
# rsync + crontab

*/5 * * * * rsync -av root@161.97.125.6:~/notes ~/coding >> ~/logcronout
*/5 * * * * rsync -av root@161.97.125.6:~/snow ~/coding/snowserv >> ~/logcronout
---------
---------
# list files with perm of s type and ls -Shl cmd
find / -perm -u=s -type f -exec ls -Shl {} + 2>/dev/null

ulimit --help
ulimit -a

#  LOGIN to system account 
# https://wiki.dieg.info/ulimit
su -l nginx -s /bin/bash
#exexc form system command 
su nginx -s /bin/bash -c 'ulimit  -a'

# background 
bg 
fg
jobs -l 
https://tokmakov.msk.ru/blog/item/469
https://www.thegeekdiary.com/understanding-the-job-control-commands-in-linux-bg-fg-and-ctrlz/

#server
nc -l 5000

#Yes, it is possible to find files by their "MAGIC BITS" using the file command in combination with the find command.
#The file command can be used to display the type of a file based on its magic bits.
#
#You can use the -b option of the file command to only output the file type, and the -i option to ignore the case of the file type.
#
#Copy code
#find /path/to/directory -type f -exec file -bi {} \; | grep -i "type"
#This command will find all files in the directory specified by "/path/to/directory" and use the file command to display the type of the file, and the grep -i command to filter the results by the specified type.
#
#You can also use the -exec option to execute any command on the files that match the search criteria.
#
#For example, to find all files th a magic bits of "PDF document" you would run :
#Copy code
find /path/to/directory -type f -exec file -bi {} \; | grep -i "PDF document"
#It is important to note that some files do not have a magic number and the file command may not recognize it.w

# exclude
rsync -av --progress sourcefolder /destinationfolder --exclude thefoldertoexclude
rsync -av . --exclude target --exclude ".git"  root@$serv:~/madara/

#To remove only binary files in a directory using a bash command,
find . -type f -exec sh -c 'file -b --mime-type "$1" | grep -q "^application/octet-stream$"' sh {} \; -print
find . -type f -exec sh -c 'file -b --mime-type "$1" | grep -q bin' sh {} \; -print

# line numbers 
grep -n 

# size hidden
du -hs .[^.]*
du -hs $(ls -A)


#https://askubuntu.com/questions/94060/run-adduser-non-interactively
adduser elasticsearch elasticsearch
hash=$(python3 -c 'import crypt; print(crypt.crypt("1234"))')
useradd -m -p $hash -s /bin/bash foo

