# compile simple means removing all spaces and newlines

for i in *.html;
do
    target=../layouts/partials/functions/$i
    cat $i | tr -d '\n' | sed "s/}[[:space:]]\+/}/g" > $target
done

