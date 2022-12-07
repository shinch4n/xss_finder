
read -p "Enter Domain : " domain
mkdir $domain
cd $domain
echo "Subdomain Enumeration Started"
xterm -e "subfinder -d $domain | tee -a subfinder-$domain.txt" &
xterm -e "assetfinder $domain | tee -a assetfinder-$domain.txt"
echo "Subdomain Enumeration Finished"
wait
echo "Finding Unique Domain..."
xterm -e "cat subfinder-$domain.txt assetfinder-$domain.txt | tee -a alldomain-$domain.txt"
xterm -e "cat alldomain-$domain.txt | sort -u | tee -a domain-$domain.txt"
echo "Unique Subdomain Saved"
echo "Checking For Live Domains"
xterm -e "cat domain-$domain.txt | httpx | tee -a livedomain-$domain.txt"
echo "Live Domain saved"

wait
echo "collecting Wayback urls..."
xterm -e "cat livedomain-$domain.txt | gau | tee -a gau-$domain.txt" &
xterm -e "cat livedomain-$domain.txt | waybackurls | tee -a waybackurl-$domain.txt" 
wait
echo "Waybacks URL Saved"
xterm -e "cat waybackurl-$domain.txt gau-$domain.txt | sort -u | tee -a urls-temp-$domain.txt"
echo "Getting parameters Pattern..."

xterm -e "cat urls-temp-$domain.txt | grep -i $domain | tee -a urls-$domain.txt"


xterm -e "cat urls-$domain.txt | gf xss | tee -a xss-gf.txt" 
 
wait
cat xss-gf.txt  | Gxss  | tee -a gxss.txt
cat gxss.txt | dalfox pipe
