for d in ./charts/* ; do
	helm package charts/$d -d files-to-gh-pages/stable
done
