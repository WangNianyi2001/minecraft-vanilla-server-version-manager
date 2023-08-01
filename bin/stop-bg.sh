if [[ ! -f log/pid ]]; then
	echo 'No running backend detected, cannot stop anything.' 1>&2;
	exit 1;
fi;

_pid=$(cat log/pid);

kill $_pid \
&& rm log/pid \
&& echo "Successfully stopped game backend (PID $_pid).";