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
# ---------------------------------------------------------

# aliases -------------------------------------------------
alias z='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias postman='/Applications/Postman.app/Contents/MacOS/Postman &'
alias minecraft-start='java -Xmx2G -Xms2G -jar ~/minecraft/server.jar --nogui'
# ---------------------------------------------------------

# prompt --------------------------------------------------
# random emoji instead of user@hostname
prompt_context() {
  emojis=("⚡️" "🔥" "💀" "😎" "🐸" "🌈" "🚀" "💡" "🌙")
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
# export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home/'

source $ZSH/oh-my-zsh.sh
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
