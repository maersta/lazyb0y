hello=ho02123ware38384you443d34o3434ingtod38384day
re='(.*)[0-9]+(.*)'
while [[ $hello =~ $re ]]; do
  hello=${BASH_REMATCH[1]}${BASH_REMATCH[2]}
done
echo "$hello"
