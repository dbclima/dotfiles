# Modificação no Prompt Sistem do Bash, modificando variaveis de ambiente
# PS1, PS2, etc...

BLACK="\[\033[30m\]"
BLUE="\[\033[34m\]"
CYAN="\[\033[36m\]"
GREEN="\[\033[32m\]"
MAGENTA="\[\033[35m\]"
RED="\[\033[31m\]"
WHITE="\[\033[37m\]"
YELLOW="\[\033[33m\]"

PS1="$BLUE╔═[$GREEN\\u$BLUE@$GREEN\\h$BLUE]══[$GREEN\\w/.$BLUE]\n\
$BLUE╚══> $YELLOW\\$ $WHITE"

