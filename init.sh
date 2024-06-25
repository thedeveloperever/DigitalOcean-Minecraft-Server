## ----------- Edit Variables here ----------- ##

# Enter modrinth links here one by one e.g. https://cdn.modrinth.com/data/P7dR8mSH/versions/tAwdMmKY/fabric-api-0.97.1%2B1.20.4.jar
MODS=""

# Enter volume name e.g. /mnt/volume_sfo3_01
VOLUME=""

# Enter server jar version e.g. https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.11/1.0.1/server/jar
JAR=""

## ----------- DONT CHANGE ANYTHING BELOW ----------- ##
cd $VOLUME
mkdir server && cd server
curl $JAR -o server.jar
mkdir mods && cd mods
for val in $MODS; do
  wget $val
done
