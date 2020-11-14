# Define output directory
OUTDIR=$1-$(date "+%Y-%m-%d-%H-%M-%S")
          
# Create output directory
mkdir $OUTDIR

# Run Nmap scan with Vulners
nmap -sS -sC -T3 -A --script=vulners.nse -oA $OUTDIR/$1 $2

# Convert XML to HTML report
xsltproc -o $OUTDIR/$1.html /tmp/nmap-bootstrap.xsl $OUTDIR/$1.xml
