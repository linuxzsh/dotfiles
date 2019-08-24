#!/bin/sh
# top apps coprocesseur en %

# debug begin
set -x

# Place your code here


TOPc=$(ps -eo cmd,%mem,%cpu --sort=-%cpu | head)
<txt> topC </txt>
echo " <tool> $TOPc </tool> "

# debug stop
set +x
