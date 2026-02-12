# BASH
A seguir as configurações do `bash`

## Setup
A maioria dos sistemas já vem com `bash` e com o arquivo `.bashrc` instalados

Basta adicionar ao fim do arquivo `.bashrc`

~~~bashscript
if [ -f "$HOME/.config/bash/bashrc" ]; then
        . "$HOME/.config/bash/bashrc"
fi
~~~

Dessa forma, as configurações serão carregadas

## Estrutura de arquivos
### bashrc
Configuração que carrega os demais arquivos

### aliases.sh
Arquivo que define os `alias`, ou apelidos, de comandos do sistema.

Exemplo de uso:
~~~bash
alias vim=nvim
~~~

### exports.sh
Arquivo que define as variávies de ambiente do sistema.

Exemplo de uso:
~~~bash
export PATH+=<adicao-path>
~~~

### functions.sh
Arquivo que define funções customizadas do sistema.

Exemplo de uso:
~~~bash
mkcd() {
    mkdir -p "$1" && cd "$1"
}
~~~

### prompt.sh
Arquivo que define o prompt inicial do sistema.

Exemplo de uso:
~~~bash
PS1=>>
~~~ 
