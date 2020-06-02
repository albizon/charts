for d in ./* ; do
	FILE=$d/Chart.yaml
	if test -f "$FILE"; then
		helm package $d -d files-to-gh-pages/stable
	fi
done
