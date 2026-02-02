# Dotfiles
Nesta pasta, salvo meus arquivos de configuracao:

## Vim
### Linux
Abra o terminal e execute os seguintes comandos

Após executar os comandos, siga para a sessão [Configuracoes
Comuns](#configuracao-comum)
#### Links Simbolicos
Comandos para os arquivos de configuracao do vim
~~~bash
ln -s ./vim/.vimrc ~/.vimrc
ln -s ./vim/snippets ~/.vim/snippets
~~~

#### Install vim-plug
~~~bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~


### Windows
Abra o `powershell` no modo administrador e execute os seguintes comandos

Após executar os comandos, siga para a sessão [Configuracoes
Comuns](#configuracao-comum)
#### Links Simbolicos
Comandos para os arquivos de configuracao do vim
~~~powershell
New-Item -Path "~\.vimrc" -ItemType SymbolicLink -Value ".\vim\.vimrc"
New-Item -Path "~\vimfiles\snippets" -ItemType SymbolicLink -Value ".\vim\snippets"
~~~

#### Install vim-plug
~~~powershell
iwr -useb `
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim `
| ni $HOME/vimfiles/autoload/plug.vim -Force
~~~

### Configuração comum
Independente do Sistema Operacional
#### Instalar os Plugins
Para instalar os plugins basta executar no COMMAND mode
~~~vim
:PlugInstall
~~~

