## ----------- Edit Variables here ----------- ##

# Enter modrinth links here one by one e.g. https://cdn.modrinth.com/data/P7dR8mSH/versions/tAwdMmKY/fabric-api-0.97.1%2B1.20.4.jar
MODS="https://cdn.modrinth.com/data/P7dR8mSH/versions/tAwdMmKY/fabric-api-0.97.1%2B1.20.4.jar https://cdn.modrinth.com/data/wnEe9KBa/versions/I8LNJvF3/vmp-fabric-mc1.20.4-0.2.0%2Bbeta.7.139-all.jar https://cdn.modrinth.com/data/NRjRiSSD/versions/5xvCCRjJ/memoryleakfix-fabric-1.17%2B-1.1.5.jar https://cdn.modrinth.com/data/fQEb0iXm/versions/bRcuOnao/krypton-0.2.6.jar https://cdn.modrinth.com/data/uXXizFIs/versions/pguEMpy9/ferritecore-6.0.3-fabric.jar https://cdn.modrinth.com/data/gvQqBUqZ/versions/nMhjKWVE/lithium-fabric-mc1.20.4-0.12.1.jar https://cdn.modrinth.com/data/vSEH1ERy/versions/pc1QuN32/threadtweak-fabric-1.20.4-0.1.2.jar https://cdn.modrinth.com/data/QwxR6Gcd/versions/aQYNRsGo/Debugify-1.20.4%2B1.1.jar"

# Enter volume name e.g. /mnt/volume1
VOLUME="/mnt/volume_sfo3_01"

# Enter server jar version e.g. https://meta.fabricmc.net/v2/versions/loader/1.21/0.15.11/1.0.1/server/jar
JAR="https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.11/1.0.1/server/jar"

## ----------- DONT CHANGE ANYTHING BELOW ----------- ##
cd $VOLUME
mkdir server && cd server
curl $JAR -o server.jar
mkdir mods && cd mods
for val in $MODS; do
  wget $val
done
