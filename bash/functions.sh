# Criar funções customizadas

# Cria uma pasta e automaticamente muda o diretório para a mesma.
mkcd() {
        mkdir -p "$1" && cd "$1"
}

# Caso haja um arquivo TODO.md, o neovim já abre nele.
nvim() {
        if [ $# -eq 0 ] && [ -f "TODO.md" ]; then
                nvim TODO.md
        else
                nvim "$@"
        fi
}
