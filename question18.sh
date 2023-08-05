cd git-practice-04

git branch -a

git checkout main
git pull origin main

for branch in $(git branch -r --list "origin/ready*"); do
    branch_name=$(echo $branch | sed 's/origin\///')
    git checkout -b $branch_name $branch
    git merge main
    git checkout main
    git merge --no-ff $branch_name -m "Merged $branch_name into main"
    git branch -d $branch_name
    git push origin --delete $branch_name
done

for branch in $(git branch -r --list "origin/update*"); do
    branch_name=$(echo $branch | sed 's/origin\///')
    git checkout -b $branch_name $branch
    git pull origin main
    git push origin $branch_name
    git branch -d $branch_name
done