# Change to the Downloads directory
cd ~/Downloads

# Download the latest release version number
curl -O https://chromedriver.storage.googleapis.com/LATEST_RELEASE

# Read the version number from the downloaded file
VERSION=$(cat LATEST_RELEASE)

# Download the corresponding chromedriver zip file
curl -O https://chromedriver.storage.googleapis.com/${VERSION}/chromedriver_mac64.zip

# Unzip the downloaded file
unzip chromedriver_mac64.zip

# Move the chromedriver binary to /usr/local/bin
sudo mv chromedriver /usr/local/bin/

# Make the chromedriver binary executable
sudo chmod +x /usr/local/bin/chromedriver

# Verify the installation
which chromedriver