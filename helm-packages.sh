for d in ./* ; do
	helm package $d -d files-to-gh-pages/stable
done
