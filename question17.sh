git checkout -b branch1
git rm -r dir1/dir2
git mv dir1/dir2/foo dir1/foo
echo "This is a new file added in branch1." > newfile1
git add newfile1"
git commit -m "Modify files to match the configuration for branch1"
git checkout main
git checkout -b branch2
echo "This is a modified version of foo in branch2." > dir1/dir2/foo_modified
echo "This is a new file added in branch2." > dir1/dir3/newfile2
git add dir1/dir2/foo_modified dir1/dir3/newfile2
git commit -m "Modify files to match the configuration for branch2"