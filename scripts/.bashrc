set -o ignoreeof

export DARGON_PROJECTS_ROOT="$MyRepositories/dargon";
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
