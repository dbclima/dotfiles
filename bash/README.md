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
Aqui está configurada 
