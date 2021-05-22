# When the current working directory changes, run a method that checks for a .env file, then sources it. Happy days.

autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env.local && -r .env.local ]]; then
       set -a
       source <(cat .env.local | sed -e '/^#/d;/^\s*$/d' -e "s/'/'\\\''/g" -e "s/=\(.*\)/='\1'/g")
       set +a
       echo "Loaded variables from .env.local"
     fi
}
add-zsh-hook chpwd load-local-conf
