set -o ignoreeof

export DARGON_PROJECTS_ROOT="$MY_REPOSITORIES/dargon";
export DARGON_BUILD_TOOLS="$DARGON_PROJECTS_ROOT/buildtools";
alias dargon="scriptcs $DARGON_BUILD_TOOLS/src/main.csx -- --BuildToolsDir=\"$DARGON_BUILD_TOOLS\" --ProjectsRootDir=\"$DARGON_PROJECTS_ROOT\"";
alias xunit_console="$DARGON_BUILD_TOOLS/dependencies/xunit-1.9.2_64/xunit.console.exe"

gsa() {
   git submodule add -b master git@github.com:${1}/${2}.git
}

gsaDargon() {
   gsa the-dargon-project "${1}"
}

fix() { 
   stty echo
}

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

attu4() {
   ssh myu94@attu4.cs.washington.edu
}



function color_my_prompt {
   local __user_and_host="\[\033[01;32m\]\u@\h\[\e[0m\]"
   local __msystem="\[\e[35m\]$MSYSTEM\[\e[0m\]"
   local __cur_location="\[\e[33m\]\w\[\e[0m\]"
   local __git_branch_color="\[\033[36m\]"
   #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
   local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
   local __prompt_tail="\[\033[00m\]\n\$"
   local __last_color="\[\033[00m\]"
   export PS1="\n$__user_and_host $__msystem $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

# export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
# export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]asdf\w\[\e[0m\]\[\e[36m\]$(parse_git_branch)\[\e[0m\] \n\$ "
# echo $PS1
