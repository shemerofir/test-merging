currentBranch=`git branch --show-current`
echo "printing ---->>>>> $currentBranch"
branchlist=`git branch -r --list | sed 's/.*\///'`
for i in "$branchlist"
do git checkout "$i"
    git branch --contains
done