export ZSH="$HOME/.oh-my-zsh"

# theme ---------------------------------------------------
ZSH_THEME="agnoster"
# ---------------------------------------------------------

# plugins -------------------------------------------------
plugins=(
  git
  gitignore
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# ---------------------------------------------------------

# user-defined functions ----------------------------------
cd () {
  builtin cd "$@";
  ls;
}

function yeet {
rm -rf $1
echo $1 has been
echo █████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo █░░░░░░░░██░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░███░░░░░░█░░░░░░█
echo █░░▄▀▄▀░░██░░▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀░░░░█░░▄▀░░█░░▄▀░░█
echo █░░░░▄▀░░██░░▄▀░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░░░░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░▄▀▄▀░░█░░▄▀░░█░░▄▀░░█
echo ███░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░█████████░░▄▀░░█████████████░░▄▀░░█████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█░░▄▀░░█
echo ███░░░░▄▀▄▀▄▀░░░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█░░▄▀░░█
echo █████░░░░▄▀░░░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█░░▄▀░░█
echo ███████░░▄▀░░███████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░░░░░█░░░░░░█
echo ███████░░▄▀░░███████░░▄▀░░█████████░░▄▀░░█████████████░░▄▀░░█████░░▄▀░░█████████░░▄▀░░██░░▄▀░░███████████████
echo ███████░░▄▀░░███████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░░░▄▀▄▀░░█░░░░░░█░░░░░░█
echo ███████░░▄▀░░███████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀░░░░█░░▄▀░░█░░▄▀░░█
echo ███████░░░░░░███████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█████░░░░░░█████░░░░░░░░░░░░░░█░░░░░░░░░░░░███░░░░░░█░░░░░░█
echo █████████████████████████████████████████████████████████████████████████████████████████████████████████████
}

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar e $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
# ---------------------------------------------------------

# aliases -------------------------------------------------
alias z='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias postman='/Applications/Postman.app/Contents/MacOS/Postman &'
alias minecraft-start='java -Xmx2G -Xms2G -jar ~/minecraft/server.jar --nogui'
alias pstart='brew services start postgresql@14'
# ---------------------------------------------------------

# prompt --------------------------------------------------
# random emoji instead of user@hostname
prompt_context() {
  emojis=("🎃" "🫨" "🐸" "🦇" "🥦")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}

# only show current directory, not entire path
prompt_dir() {
  prompt_segment blue $CURRENT_FG "%c"
}
# ---------------------------------------------------------

# env variables -------------------------------------------
export JAVA_HOME='/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/'

source $ZSH/oh-my-zsh.sh
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
