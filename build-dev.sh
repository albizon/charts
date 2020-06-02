for d in ./* ; do
        FILE=$d/Chart.yaml
	FILE_BUILD=$d/build.sh
        if test -f "$FILE"; then
		if test -f "$FILE_BUILD"; then
			cd $d
                	bash ./build.sh
			cd ..
		fi
                helm package $d -d files-to-gh-pages/dev
        fi
done
