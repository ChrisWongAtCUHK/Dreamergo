#
# Load the files for proxy & download
#
proxy=$(head -1 proxy.txt)
user=$(head -2 proxy.txt | tail -1)

# get the urls from a text file(line by line)
for url in $(cat urls.txt); do
	# cut out the jpg file name
	jpg=$(echo $url | cut -d '/' -f 9)
	# download by curl
	curl $url -o images\/$jpg --proxy $proxy --proxy-user $user
done