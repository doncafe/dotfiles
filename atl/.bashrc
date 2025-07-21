#
# ATL ~/.bashrc
#
. /etc/profile.d/atl.sh
. /etc/profile.d/lmod.sh
#. ~/mambaforge/etc/profile.d/conda.sh
# WRF Python environment
#conda activate wrf

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
[[ -e ~/.alias ]] && . ~/.alias

# Libvirt
export LIBVIRT_DEFAULT_URI=qemu:///system

# Carapace
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
source <(carapace _carapace bash)

# ohmyposh
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/blue-owl.omp.json)"

# Rust
#export PATH="$HOME/.cargo/bin:$PATH"
#alias rustbook="rustup doc --book"
#. "$HOME/.cargo/env"
