for i in ./export-* ; do
  OUTFILE=`echo $i | sed -e "s/export-\([^-]\+\)\(-white\)\?.svg/\U\1\E\2/"`
  convert -background none $i -resize 28x28 -extent 32x32-3-1 $OUTFILE.png
done
