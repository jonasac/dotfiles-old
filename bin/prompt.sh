RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
CYAN='\[\033[0;36m\]'
BLUE='\[\033[1;34m\]'
YELLOW='\[\033[0;33m\]'
NORMAL='\[\033[0m\]'

function is_git_repository {
  git branch > /dev/null 2>&1
}

function set_git_branch {
  git_status="$(git status 2> /dev/null)"
  if [[ ${git_status} =~ "working directory clean" ]]; then
    state="${GREEN}"
  elif [[ ${git_status} =~ "Changes to be committed" ]]; then
    state="${YELLOW}"
  else
    state="${RED}"
  fi

  branch_pattern="^# On branch ([^${IFS}]*)"
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch=${BASH_REMATCH[1]}
  fi

  # brinfo=$(git branch -v | grep ${branch})
  # if [[ $brinfo =~("[ahead "([[:digit:]]*)) ]]; then
  #   ahead_num=${BASH_REMATCH[2]}
  # else
  #   ahead_num=''
  # fi

  remote_pattern="# Your branch is (.*) of"
  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="${GREEN}↑${NORMAL}"
    else
      remote="${RED}↓${NORMAL}"
    fi
  else
    remote=""
  fi

  diverge_pattern="# Your branch and (.*) have diverged"
  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="${YELLOW}↕${NORMAL}"
  fi
  BRANCH=":[${state}${branch}${NORMAL}${remote}]${NORMAL}"
}

function set_prompt () {
  if is_git_repository ; then
    set_git_branch
  else
    BRANCH=''
  fi
  PS1="${GREEN}\h${NORMAL}:${BLUE}\W${NORMAL}${BRANCH}${CYAN}-> ${NORMAL}"
}

PROMPT_COMMAND=set_prompt
