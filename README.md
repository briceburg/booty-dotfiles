
# booty-dotfiles

briceburg's user and system dotfiles :pirate_flag: :gift:

## overview

* dotfiles are managed by the [gitbooty](https://github.com/briceburg/gitbooty) command. see [Usage](https://github.com/briceburg/gitbooty#Usage) for details.
* dotfiles exist in [branches](https://github.com/briceburg/booty-dotfiles/branches) of this repository. 
  * by convention, user dotfiles are kept under a `<username>/<os-variant>` branch and system dotfiles under `system/<os-variant>` branches, e.g. [briceburg/archlinux](https://github.com/briceburg/booty-dotfiles/tree/briceburg/archlinux) and [system/archlinux](https://github.com/briceburg/booty-dotfiles/tree/system/archlinux).

## usage

### system bootstrap

A system bootstrap script named 'bootystrap' is included in system dotfiles. The script must idempotently manage a system's packages, services, users, and core configuration -- the intention is to make it easy to restore state into a freshly installed OS!

Here's an example from the system/archlinux branch: https://github.com/briceburg/booty-dotfiles/blob/system/archlinux/usr/local/bin/bootystrap

To get started in a fresh OS that has available network and `git` installed;

* first, install [gitbooty](https://github.com/briceburg/gitbooty).
* next, checkout system dotfiles (`sudo gitbooty pull`). this will add `/usr/local/bootystrap`
* finally, run the system bootstrap (`sudo bootystrap`)

### creating a new branch

Because branches represent a tree, either under a user's HOME direcotry, or under the root (/) directory when run as root/sudo, it's important to exclude files like README.md and LICENSE. The easiest way to do this is to create a branch without including previous history via the `--orphan` flag, and then include relevant dotfiles. E.g.

```sh
git switch --orphan briceburg/foo
git commit -am "initial commit of briceburg/foo" --allow-empty
git push origin HEAD
```
