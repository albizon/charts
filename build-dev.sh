for d in ./* ; do
        FILE=$d/Chart.yaml
        if test -f "$FILE"; then
                cd $d
                bash ./build.sh
                helm package $d -d files-to-gh-pages/dev
        fi
done
