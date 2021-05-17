# zsh

Install pre-reqs:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# optional
brew tap toolbox/tap git@cd.splunkdev.com:toolbox/homebrew-tap.git
```

Install ryan-zsh:
```
mkdir ~/projects
cd ~/projects
git clone git@github.com:rscot231/ryan-zsh.git
./setup.sh
```

Ideas:
https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org
https://mads-hartmann.com/2017/08/06/writing-zsh-completion-scripts.html
