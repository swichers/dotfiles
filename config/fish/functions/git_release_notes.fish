function git_release_notes --description "Generate release notes from git log"
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    command git log --pretty='format:%s' $argv[1]..$argv[2] | grep -v 'Merge pull request' | grep -v 'Merge branch' | sort | uniq | sed 's/^/* /'
  end
end
