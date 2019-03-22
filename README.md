## Setting up hooks for automatic tag-generation using ctags

_SOURCE: [tpope's blog](http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html)_


### Installation

`$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/rhiroyuki/git_template/master/install.sh)"`

### Notes

- Perform `git init` inside an existing repository to copy the hooks at
  `./hooks/` into `repo/.git/hooks/`.

- Now any new repositories we create or clone will be immediately indexed with
  Ctags (at `repo/.git/tags`) and set up to re-index every time we check out, commit, merge, or
  rebase. Basically, we’ll never have to manually run Ctags on a Git repository
  again.

- If [vim-fugitive](https://github.com/tpope/vim-fugitive) is installed,
  `repo/.git/tags` is already added into the `tags` option; thus, we don't even
  have to explicitly add the location of the tags file in Vim!

