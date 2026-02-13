# Criar funções customizadas

# Cria uma pasta e automaticamente muda o diretório para a mesma.
mkcd() {
        mkdir -p "$1" && cd "$1"
}

# Caso haja um arquivo TODO.md, o neovim já abre nele.
nvim() {
        if [ $# -eq 0 ] && [ -f "TODO.md" ]; then
                command nvim TODO.md
        else
                command nvim "$@"
        fi
}

# Configura a inicialização sem parametros do nvim
nvim() {
        if [ $# -eq 0 ]; then
                if [ -f "TODO.md" ]; then
                        command nvim TODO.md
                else
                        command nvim .
                fi
        else
                command nvim "$@"
        fi
}
