# dotfiles

Personal dotfiles managed with a bare git repo. No symlinks, no extra tools.

## What's tracked

- `~/.zshrc` — shell config, aliases, PATH
- `~/.config/nvim/` — Neovim config (lazy.nvim based)

## Fresh machine setup

**1. Clone the bare repo**

```bash
git clone --bare https://github.com/havenbarnes/dotfiles.git $HOME/.dotfiles
```

**2. Add the alias to your shell temporarily**

```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

**3. Check out the files**

```bash
dotfiles checkout
```

If this fails due to conflicting files (e.g. a default `.zshrc`), back them up first:

```bash
mkdir -p ~/.dotfiles-backup
dotfiles checkout 2>&1 | grep "^\s" | awk '{print $1}' | xargs -I{} mv {} ~/.dotfiles-backup/{}
dotfiles checkout
```

**4. Hide untracked files**

```bash
dotfiles config status.showUntrackedFiles no
```

**5. Create `~/.zshrc.local` for secrets**

This file is never tracked. Add any machine-specific env vars or secrets here:

```bash
touch ~/.zshrc.local
# then add exports, e.g.:
# export SOME_API_KEY="..."
```

**6. Reload your shell**

```bash
source ~/.zshrc
```

## Day-to-day usage

The `dotfiles` alias works exactly like `git`, scoped to your home directory:

```bash
dotfiles status
dotfiles add ~/.zshrc
dotfiles commit -m "update zshrc"
dotfiles push
```
