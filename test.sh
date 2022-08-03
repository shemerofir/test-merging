currentBranch=`git branch --show-current`
echo "printing ---->>>>> $currentBranch"

git branch -r --list | sed 's/.*\///' | sed "/$currentBranch/d"