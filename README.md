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


### WSL
Para que funcione totalmente no WSL2, tem que baixar as seguintes bibliotecas

#### choco
instalador de pacotes do windows
~~~powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
~~~

#### win32yank
Ponte entre clipboard do windows e o WSL2
~~~powershell
choco install win32yank
~~~

### Configuração comum
Independente do Sistema Operacional
#### Instalar os Plugins
Para instalar os plugins basta executar no COMMAND mode
~~~vim
:PlugInstall
~~~

