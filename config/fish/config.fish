if type -P 'subl'
  set -gx EDITOR 'subl -w'
else
  set -gx EDITOR 'nano'
end

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE "en_US.UTF-8"
set -gx LC_MESSAGES "en_US.UTF-8"
set -gx LC_COLLATE C

set -gx GIT_MERGE_AUTOEDIT no

set -g default_user steven.wichers

set -gx PATH $HOME/.composer/vendor/bin /usr/local/bin /usr/local/sbin $PATH

. $HOME/.config/fish/config.local.fish
