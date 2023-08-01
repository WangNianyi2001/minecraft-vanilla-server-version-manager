propertyPath=server/server.properties;

if [[ ! -e $propertyPath ]]; then
	exit 1;
fi;

echo Started running since $(echo $(sed '2q;d' $propertyPath) | cut -d# -f2);

if [[ -f log/pid ]]; then
	echo PID $(cat log/pid);
fi;