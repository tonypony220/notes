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
