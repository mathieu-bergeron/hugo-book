# compile simply means removing all spaces and newlines

for i in *.html;
do
    #iconv  -f utf-8 -t ascii $i -o $i
    target=../layouts/shortcodes/$i
    cat $i | tr -d '\n' | sed "s/}[[:space:]]\+/}/g" > $target
done

