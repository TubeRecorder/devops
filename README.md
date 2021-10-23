# DevOps

**All devops utilities for the full stack**

---

Provides all the devops utilities needed to develop and release the full stack.

## Cloning

To clone this repository:

    git clone --recurse-submodules -j8 git@github.com:TubeRecorder/devops.git

To make sure `master` branch is checked out:

    git submodule foreach "(git checkout master; git pull)&"
