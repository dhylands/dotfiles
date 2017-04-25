# Go and grab git-prompt.sh if it hasn't been done yet.

GIT_PROMPT=~/bin/git-prompt.sh
if [ ! -f ${GIT_PROMPT} ]; then
    echo "Fetching ${GIT_PROMPT}"
    wget -O ${GIT_PROMPT} 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh'
fi
. ${GIT_PROMPT}
