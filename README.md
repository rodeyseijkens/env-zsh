Env-zsh
=======

Automatically load environment variables from a .env.local file in your current working directory, triggered when you change directory.

NB: the .env.local file is sourced, so you must make sure that the syntax of the .env.local file is valid ZSH

How to install
=============

```
cd ~/.oh-my-zsh/plugins
git clone https://github.com/johnhamelink/env-zsh.git env
vi ~/.zshrc && reload

# edit your plugin list by adding 'env'
...
plugins=(git ... env)
...

```

save and you are done \o/
