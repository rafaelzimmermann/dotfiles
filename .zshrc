
export CART_NAME="rafaelzimmermann"
cart insert "${CART_NAME}"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

cp $HOME/.data/cartridges/${CART_NAME}/themes/* $ZSH/themes/

source $ZSH/oh-my-zsh.sh

cp $HOME/.data/cartridges/${CART_NAME}/.zsh_history $HOME/.data/cartridges/${CART_NAME}/.zsh_history_tmp
rm -rf $HOME/.data/cartridges/${CART_NAME}/.zsh_history
fc -p $HOME/.data/cartridges/${CART_NAME}/.zsh_history
cp $HOME/.data/cartridges/${CART_NAME}/.zsh_history_tmp  $HOME/.data/cartridges/${CART_NAME}/.zsh_history

export PATH="$PATH:$HOME/.data/cartridges/${CART_NAME}/bin"
chmod u+x ~/.data/cartridges/${CART_NAME}/bin/*