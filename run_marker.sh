input=${1}
output=`echo "$input" | awk '{split($0, a, "*");print a[1];}' | awk '{gsub("/", "_", $0);print;}'`.txt
echo $output

canopython object-marker.py $output /dev/null "$input"
