# `pushd` and `popd`-style commands for git branches (in the place of directories)
# USAGE: `pushb <branch>; SOME_WORK; popb`
GITSTACK=() # stack of branches–just an array that we add to and access from the tail
GITSTASHCK=() # stack of stashes

function pushb {
  GITSTACK+=`git symbolic-ref --short HEAD`
  GITSTASHCK+=`git stash create`
  git reset --hard # `git stash create` doesn't do this the way `git stash` normally does
  git checkout $1
  echo ${GITSTACK[@]}
}

function popb {
  git checkout ${GITSTACK[-1]}
  unset GITSTACK[-1]
  git stash apply ${GITSTASHCK[-1]}
  unset ${GITSTASHCK[-1]}
  echo ${GITSTACK[@]}
}
