# Managing symlinks
alias symlink-ls="find . -type l"
alias symlink-dangling-ls="find -L . -type l"
alias symlink-rm="find . -type l -exec rm -- {} +"
alias symlink-dangling-rm="find -L . -type l -exec rm -- {} +"
