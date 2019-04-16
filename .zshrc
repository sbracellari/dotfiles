export ZSH=$HOME/.oh-my-zsh

# theme ------------------------------------------------
ZSH_THEME="agnoster"
# ------------------------------------------------------

# plugins ----------------------------------------------
plugins=(
  git
  gitignore
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# ------------------------------------------------------

source $ZSH/oh-my-zsh.sh

# user-defined functions--------------------------------

# autorun ls on every cd
cd() {
  builtin cd "$@";
  ls;
}
# ------------------------------------------------------ 

# aliases ----------------------------------------------
alias zshrc='source ~/.zshrc'
# ------------------------------------------------------

# environmental variables ------------------------------
export PORTAL_HOME=~/portal
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export MYSAIL=/home/samantha/uportal/uportal-start
export CATALINA_HOME=~/uportal/uportal-start/.gradle/tomcat
export CATALINA_OPTS="-server -d64 -Xms2g -Xmx4g"
export IAM_HOME=~/netid-development
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
