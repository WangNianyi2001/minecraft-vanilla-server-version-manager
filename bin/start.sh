# Check if a version is present in /server/.
if [[ -z $(bin/status.sh) ]]; then
	echo 'No version is selected, cannot start server.';
	exit 1;
fi;

_pwd=$(pwd);
cd server;
./run.bat;
cd "$_pwd";