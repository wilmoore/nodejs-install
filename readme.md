# nodejs-install
> Installs pre-compiled NodeJS binaries while avoiding sudo or chown.

![](https://cldup.com/gwMh7Zzx2Z.png)


## This _IS_ for you if

-   You are not satisifed with heavy `sudo` based NodeJS installers.
-   You are not satisifed with installations that force you into `sudo chown -R $USER /usr/local` without explaining the problems it can cause.
-   You stick with the latest version of NodeJS 99% of the time so you don't need a complex version manager.
-   You would prefer the ability to install any available NodeJS version at any time vs. only being able to install the latest version (i.e. homebrew).


## This is _NOT_ for you if

-   You are content with having to install programs via `sudo`.
-   You are content with having to repeatedly `sudo chown -R $USER /usr/local`.
-   You are not a full-time developer, need to install NodeJS, but likely won't be installing many, if any packages or programs.


## Rationale

**nodejs-install** attempts to stick to the classic UNIX notion that tools should do one thing well.

>   While there are [smart][n] [alternative][nvm] [tools][nave] that attempt to [solve][30-second-install] this problem, [none][avn] of the tools I've found were simple enough for me.


## Features

-   **simple** no need to compile NodeJS from source and no need to update `nodejs-install` when a new NodeJS version is released.
-   **bash and zsh** actively supported; though care has been taken such that other shells _may_ work as well (but only [bash] and [zsh] are supported).
-   **tiny**: less than ~200 LOC.


## Non-Features

-   Does not include a version switcher
      * because you might not need one
      * but if you do need version switching, you can use a less complex and portable tool like [`direnv`][direnv]


## Usage Examples

### Install a specific NodeJS version

    nodejs-install <version> $NODE_VERSIONS

### List all available NodeJS versions

    nodejs-install --list

### List installed NodeJS version(s)

    ls $NODE_VERSIONS

### Show currently active NodeJS version

    node --version


## Install

**homebrew** (recommended for OSX users)

    brew install https://raw.githubusercontent.com/wilmoore/nodejs-install/master/share/homebrew/nodejs-install.rb

**source** (for non-OSX users or those that prefer not to use `homebrew`):

    git clone https://github.com/wilmoore/nodejs-install.git
    cd nodejs-install
    make install # you can also set `PREFIX=` to install into a prefix of your choice instead of the default `/usr/local`


## Setup

> Add one of the following to `$HOME/.bashrc`, `$HOME/.zshrc`, or your shell's equivalent configuration file:

    export NODE_HOME="~/.local/share/node"
    export NODE_VERSIONS="$NODE_HOME/versions"


## Integration with [direnv][direnv]

> More info on the direnv [wiki](https://github.com/direnv/direnv/wiki/Node).

## Deactivate / Uninstall

1. Remove [setup](https://github.com/wilmoore/nodejs-install#setup) configuration.

2. Enter one of the following commands listed below to remove associated files.

        # Homebrew (recommended)
        brew remove --force nodejs-install

        # non-Homebrew
        rm -rf $PREFIX/nodejs-install


## Having Issues?

0. Paste the following script into your terminal. This will copy the debug output to your clipboard (`pbcopy` works on Mac OSX; switch to your OS equivalent if necessary)
0. Paste the contents of your clipboard into a [gist].
0. File an [issue](https://github.com/wilmoore/nodejs-install/issues?state=open) and include the link to the [gist].

```sh
pbcopy <<-EOF
## System

  $(uname -a)

## Script

  TYPE:    $(command -v node 2>/dev/null || echo 'NOT FOUND')
  VERSION: $(node --version  2>/dev/null || echo 'NOT FOUND')

## Environment

  SHELL:        $(echo $SHELL)
  PATH:         $(echo $PATH)

## Homebrew

  VERSION: $(test -n `command -v brew` && brew --version)
  PATH:    $(command -v brew)

EOF
```

## Resources

-   [direnv]


## Alternatives

-   [n]
-   [nvm]
-   [nave]


## LICENSE

  MIT



[30-second-install]: https://gist.github.com/isaacs/579814
[direnv]: http://direnv.net
[bash]: http://www.gnu.org/software/bash/
[gist]: https://gist.github.com/
[nave]: https://github.com/isaacs/nave
[nvm]: https://github.com/creationix/nvm
[avn]: https://github.com/wbyoung/avn
[zsh]: http://www.zsh.org/
[n]: https://github.com/tj/n
