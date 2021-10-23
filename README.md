# DevOps

**All devops utilities for the full stack**

---

Provides all the devops utilities needed to develop and release the full stack.

## Cloning

To clone this repository:

    git clone --recurse-submodules -j8 ssh://git@gitea.girgis.me:32822/tube-recorder/devops.git

To make sure `master` branch is checked out:

    git submodule foreach "(git checkout master; git pull)&"
