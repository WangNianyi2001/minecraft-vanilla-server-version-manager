# Check if a version is present in /server/.
if [[ -z $(bin/status.sh) ]]; then
	echo 'No version is selected, cannot start server.' 1>&2;
	exit 1;
fi;

# Make a log directory.
if [[ ! -d log ]]; then rm log; fi;
if [[ ! -e log ]]; then mkdir log; fi;
rm -rf log/*;

# Run the game backend in a detached process
# and redirect its stdout to /log/stdout.log
# and store its PID to /log/pid.
_pwd=$(pwd);
cd server;
./run.bat > ../log/stdout.log &
_pid=$!;
touch log/pid;
echo $_pid > log/pid;
disown $_pid;
cd "$_pwd";

echo "Successfully started game backend (PID $_pid).";