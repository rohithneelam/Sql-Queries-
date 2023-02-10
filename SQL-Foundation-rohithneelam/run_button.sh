#######################################
#   Configuration for Run Button      #
#######################################
# Clone your assignmnet first from gitHub, using shell #prompt. Use the folder name and file name you get after # #cloning the SQL assignment from gitHub

#Change the name of the folder and the SQL file here
sqlite3 SQL.db ".read DDL/ABC.SQL"

#######################################
#   Configuration for GitHub          #
#######################################
# This is a ONE TIME SETUP ONLYcvl
# Configure these variables
EMAIL="rohithneelam1997@gmail.com"
NAME="rohithneelam"
GITHUB_USERNAME="rohithneelam"
GITHUB_ACCESS_TOKEN="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"

#######################################
#   DO NOT CHANGE ANYTHING BELOW      #
#######################################

#git configuration below make using IDE easy.
git config --global --replace-all user.email $EMAIL
#enter your name
git config --global --replace-all user.name $NAME

#create ~/.netrc file
# This .netrc file is used to store your username and your Perosnal Access Token
FILE1=~/.netrc
if test -f "$FILE1"; then
    rm $FILE1
fi

echo machine github.com login $GITHUB_USERNAME password $GITHUB_ACCESS_TOKEN  > $FILE1




