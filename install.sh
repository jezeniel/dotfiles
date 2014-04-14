shopt -s dotglob
DIR="$(cd "$(dirname "$0")" && pwd)"
FILES="$DIR/*"

for f in $FILES
do
  if [ -s "$f" ] && [ ! -d "$f" ]; then
    echo "$f"
  fi
done
