i?=

help:
	@cat README.txt;

status:
	@bin/status.sh;

start:
	@bin/start.sh;

start-bg:
	@bin/start-bg.sh;

stop-bg:
	@bin/stop-bg.sh;

command:
	@echo $i | bin/command.sh;

backup:
	@bin/backup.sh;

query:
	@bin/query.sh $i;

checkout:
	@bin/checkout.sh $i;

.PHONY: backup
