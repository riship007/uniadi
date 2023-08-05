cd git-practice-03
git checkout -b branch1
git rm -r dir1/dir2
git rm dir3/bar_copy
echo "text" > newfile1
git add newfile1
echo "text" > README.md
git add README.md
git commit -m "massage"
git checkout -b branch2
echo "text" > dir1/dir2/foo_modified
git add dir1/dir2/foo_modified
echo "text" > dir1/dir3/newfile2
git add dir1/dir3/newfile2
echo "text" > LICENSE
git add LICENSE
git commit -m "massage"
git checkout main