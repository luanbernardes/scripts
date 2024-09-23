# ----------------- ASDF -----------------
echo "installing asdf plugins: Nodejs and Golang"
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang latest
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest