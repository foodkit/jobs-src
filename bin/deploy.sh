# paths
LOCAL_PATH=./build/
REMOTE_REPO=git@github.com:foodkit/jobs.git

rm -rf $LOCAL_PATH/*
rm -rf $LOCAL_PATH/.git
bundle exec middleman build

cd $LOCAL_PATH
git init .
git add -A .
git commit -m 'Rebuilding from scratch'
git remote add origin $REMOTE_REPO
git push origin master --force
