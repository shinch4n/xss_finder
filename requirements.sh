sudo apt update
sudo apt install xterm subfinder assetfinder golang -y
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/tomnomnom/gf@latest
go install github.com/KathanP19/Gxss@latest
go install github.com/hahwul/dalfox@latest
mkdir ~/.gf
git clone https://github.com/1ndianl33t/Gf-Patterns.git
cd Gf-Patterns
mv * ~/.gf
sudo mv ~/go/bin/* /usr/local/bin/
