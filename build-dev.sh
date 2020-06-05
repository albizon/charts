for d in ./* ; do
        FILE=$d/Chart.yaml
	FILE_BUILD=$d/build.sh
        if test -f "$FILE"; then
		if test -f "$FILE_BUILD"; then
			cd $d
                	bash ./build.sh
			cd ..
		fi
		cat $FILE
                helm repo add   stable https://kubernetes-charts.storage.googleapis.com/
                helm repo update
                helm dep build $d
		ls -l $d
		ls -l $d/charts
		helm package $d -d files-to-gh-pages/dev
        fi
done
