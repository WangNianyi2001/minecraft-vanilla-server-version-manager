Usage: make command [i=<argument>]

Commands:

- help: Display this help message.

- status: Show status of selected version and the PID of running background (if available).

- start: Start the selected version.

- start-bg: Start the selected version in a detached process.

- stop-bg: Stop the detached running background.

- command: Send command to the detached running background.
	- <argument>: The command to be sent.

- backup: Make a backup file for current savegame.
	Note: Game must be stopped to make backup.

- query: Look for for a backup version.
	- <argument>: Version name.

- checkout: Rollback to a backup version.
	- <argument>: Version name.
	Note: If not only one version of name is found, operation will be terminated.