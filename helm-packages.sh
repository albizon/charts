for d in ./* ; do
	FILE=$d/Chart.yaml
	if test -f "$FILE"; then
		helm repo add	stable https://kubernetes-charts.storage.googleapis.com/
		helm repo update
		helm dep build $d
		helm package $d -d files-to-gh-pages/stable
	fi
done
