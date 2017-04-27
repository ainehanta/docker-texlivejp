if [ $# -ne 1 ]; then
  echo "Require tex file name"
  echo "Example:"
  echo "compile.sh hogehoge.tex"
fi

docker run -it --rm -v $(pwd):/tex ainehanta/texlivejp ptex2pdf -l $1
