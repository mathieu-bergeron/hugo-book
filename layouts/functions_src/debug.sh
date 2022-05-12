# compile simple means removing all spaces and newlines

for i in *.html;
do
    target=../partials/functions/$i
    cp $i $target
done

