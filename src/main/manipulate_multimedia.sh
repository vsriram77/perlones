
# replace song/title as the file name
ls|perl -ne 'chomp; $tag=$_; $tag =~ s/\.mp3//; $cmd="id3tag --song $tag $_"; print "$cmd\n"; system($cmd);'
