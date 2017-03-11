#!/usr/bin/env bash

index_file="index.html"

# Extension of files to include:
ext="jpg"

for file in "$PWD"/*."${ext}"; do
    filename=$(basename $file)
    echo -e "<p><a href=\""${filename}"\">"${filename}"</a></p>\n" >> "${index_file}"
    echo -e "<p><img src=\""${filename}"\"></p>\n" >> "${index_file}"
done

ext="pde"

for file in "$PWD"/*."${ext}"; do
    filename=$(basename $file)
    echo -e "<p><a href=\""${filename}"\">"${filename}"</a></p>\n" >> "${index_file}"
    echo -e "<p><pre><code>\n" >> "${index_file}"
    cat $file | sed 's/^/    /' >> "${index_file}"
    echo -e "</code></pre></p>" >> "${index_file}"
done

