# Check if a version is present in /server/.
if [[ -z $(bin/status.sh) ]]; then
	echo 'No version is selected, cannot make backup.' 1>&2;
	exit 1;
fi;

# Stop the backend if running.
bin/stop-bg.sh 2> /dev/null;

# Create the backup directory.
if [[ ! -d backup ]]; then
	if [[ -f backup ]]; then rm backup; fi;
	mkdir backup;
fi;

# Archive /server/ into a single tar file.
name=backup/$(bin/datetime.sh).tar.gz;
tar -czf "$name" server;
echo Successfully backed-up into "$name".;