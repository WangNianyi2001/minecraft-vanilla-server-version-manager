version=$(bin/query.sh $*);
count=$(echo "$version" | wc -l);

if (( $count == 0 )); then
	echo "No version found." 1>&2;
	exit 1;
fi;

if (( $count > 1 )); then
	echo "Multiple versions found:";
	echo "$version";
	exit 1;
fi;

# Confirmation.
echo Version to be checked-out: $version.
read -p "Continue? (y/n) ";
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
	echo "Nevermind then.";
	exit 0;
fi;

echo;
echo Checking-out to version $version...;

# Stop the backend if running.
bin/stop-bg.sh 2> /dev/null;

# Remove the current backend directory.
rm -rf server;

# Unpack from backup tar file.
mkdir server;
tar -xf $version -C server;

echo Successfully checked-out to version $version.;

echo;
echo You may now run \`make start\` to run the game in foreground
echo or \`make start-bg\` to run in background.