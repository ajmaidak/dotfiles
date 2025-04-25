To bootstrap:

Install chezmoi: `sh -c "$(curl -fsLS chezmoi.io/get)"`

Setup Data Config: `.config/chezmoi/chezmoi.toml`, with

```
[data]
    email = "YOUR EMAIL"
    signingkey = "GPG signing key"

```

Apply Configs: `chezmoi init --apply https://github.com/ajmaidak/dotfiles.git`

Install Vim PlugIns with :PlugInstall
