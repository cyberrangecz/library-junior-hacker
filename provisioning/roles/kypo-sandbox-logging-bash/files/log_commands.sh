#!/bin/bash

# We choose eth0 IP address as the default address of this machine.
IP=$(hostname -I)

# Utility function to escape the quoted strings.
# Special characters are:
# \\ - backslash
# \" - double quote
# \a - audible bell
# \f - form feed
# \n - new line (forced to use a hacky solution to replace this one)
# \r - return
# \t - horizontal tab
# \v - vertical tab
escape-str() {
	sed -r 's/\\/\\\\/g; s/"/\\"/g; s/\a/\\a/g; s/\f/\\f/g; s/\r/\\r/g; s/\t/\\t/g; s/\v/\\v/g' | tr '\n' '\t' | sed 's/\t/\\n/g' | head -c-2
}

# Log the command to a log file for later processing.
log-command() {
	declare command=$(fc -ln -1 | sed -r 's/^[[:blank:]]*//g'  | sed -e 's/[[:space:]]*$//' | escape-str)
    declare wd=$(realpath "$(pwd)" | escape-str)
	if [ -n "$command" ]; then
    			logger -p syslog.info -t bash.command "{\"cmd\":\"$command\", \"username\":\"$(echo $USER | escape-str)\", \"wd\":\"$wd\"}"
	fi
}


#Executes on every command, before the command itself gets executed. Because of that, it logs commands like msf-console correctly, unlike PROMPT_COMMAND.
# Is only called once, which doesnt log commands like exit multiple times like trap DEBUG does.
PS0='$(log-command)'

