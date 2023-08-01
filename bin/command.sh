# Check if there is a running backend.
if [[ ! -f log/pid ]]; then
	echo No game is running. 1>&2;
	exit 1;
fi;

_stdin=$(cat -);
_pid=$(cat log/pid);

echo $_stdin >> log/stdout.log;
echo $_stdin > "/proc/$_pid/fd/0";