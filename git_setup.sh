echo "Type in your Github username:"
read git_user

echo "Type in your Github email address:"
read git_email

git config --global user.email $git_email
git config --global user.name $git_user
# Default 900 seconds to store password
git config credential.helper cache

echo "Github username and email are now configured!"
