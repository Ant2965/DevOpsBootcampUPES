for s in $(ls *.md)
do
  mdslides ./"$s" --include media
  f=${s::-3}
  echo $f
  mv "$f/index.html" "$f.html"
  rm -f -r "$f"
done