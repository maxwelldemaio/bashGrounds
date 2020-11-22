echo "Github username:"
read git_user

echo "Github email address:"
read git_email

git config --global user.email $git_email
git config --global user.name $git_user

# Change from default 900 seconds to store password to 1 hour
git config --global credential.helper 'cache --timeout=3600'

echo "Github username and email are now configured!"
echo "Github credential cache set to 1 hour"
