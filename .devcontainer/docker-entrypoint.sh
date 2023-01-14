#!/usr/bin/env bash

# Starship
curl -fsSL https://starship.rs/install.sh | sh -s -- --yes
echo 'eval "$(starship init bash)"' >> '/home/vscode/.bashrc'

# Add Git autocompletions
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
cat <<EOT >> ~/.bashrc
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
EOT

# Add autocompletions ble.sh
git clone --recursive https://github.com/akinomyoga/ble.sh.git ~/ble.sh
make -C ~/ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc && rm -r ~/ble.sh

# Configure hstr
hstr --show-configuration >> ~/.bashrc

npm i -g pnpm

exec "$@"
