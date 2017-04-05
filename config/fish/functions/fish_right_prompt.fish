
function get_git_status -d "Gets the current git status"
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set -l dirty (command git status -s --ignore-submodules=dirty | wc -l | sed -e 's/^ *//' -e 's/ *$//' 2> /dev/null)
    set -l staged (command git diff --name-only --staged | wc -l | sed -e 's/^ *//' -e 's/ *$//' 2> /dev/null)
    set -l ref (command git symbolic-ref HEAD | sed  "s-refs/heads/--" | sed -e 's/^ *//' -e 's/ *$//' 2> /dev/null)

    if [ "$dirty" -gt 0 -a "$staged" -gt 0 ]
      set_color red
      echo "$dirty ch"
      echo " "
      set_color -o green
      echo "$staged stg"
      echo " "
      set_color -b red
    else if [ "$dirty" -gt 0 ]
      set_color red
      echo "$dirty changed "
      set_color white
      set_color -b red
    else if [ "$staged" -gt 0 ]
      set_color green
      echo "$staged staged "
      set_color white
      set_color -b green
    end

    echo " $ref "
    set_color normal
    set_color -b normal
   end
end

function fish_right_prompt -d "Prints right prompt"
  get_git_status
end
