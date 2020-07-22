if type -P 'code' > /dev/null
  set -gx EDITOR 'code'
else
  set -gx EDITOR 'nano'
end

set fish_greeting

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE "en_US.UTF-8"
set -gx LC_MESSAGES "en_US.UTF-8"
set -gx LC_COLLATE C

set -gx GIT_MERGE_AUTOEDIT no

set -g default_user steven.wichers

set -gx PATH $HOME/.composer/vendor/bin $HOME/.node/bin $HOME/.gem/ruby/2.6.0/bin /usr/local/bin /usr/local/sbin $PATH
set -gx PATH $HOME/.symfony/bin $PATH
set -gx NODE_PATH $HOME/.node/lib/node_modules $NODE_PATH
set -gx MANPATH $HOME/.node/share/man $MANPATH

if test -e $HOME/.config/fish/config.local.fish
  . $HOME/.config/fish/config.local.fish
end

if type -q exa
  alias ls='exa'
end

if type -q batcat
  alias cat='batcat'
end

if type -q bat
  alias cat='bat'
end

if type -q tldr
  alias help='tldr'
end

if type -q prettyping
  alias ping='prettyping --nolegend'
end

if type -q nvm
  nvm use default
end