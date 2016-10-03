sudo su
## Add Neo4j key into the apt package manager
wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
## Add Neo4j to the APT sources list: 
echo 'deb http://debian.neo4j.org/repo stable/' >/tmp/neo4j.list
sudo mv /tmp/neo4j.list /etc/apt/sources.list.d
echo " Update the package manager"
sudo apt-get update
echo "Install Neo4j"
sudo apt-get install neo4j

echo "Checking Neo4j Status"
service neo4j-service status

