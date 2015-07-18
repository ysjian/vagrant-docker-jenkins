#Java home
JAVA_HOME_PREFIX=/usr/Tools/JDK
JAVA_HOME_SUFFIX=
JDK7=/jdk1.7.0_79
JDK8=/jdk1.8.0_45
export JAVA_HOME=${JAVA_HOME_PREFIX}${JDK8}${JAVA_HOME_SUFFIX}
export PATH=$JAVA_HOME/bin:$PATH


#Gradle home
GRADLE_HOME_PREFIX=/usr/Tools/Gradle
GRADLE_HOME_SUFFIX=
GRADLE_2_3=/gradle-2.3
GRADLE_2_4=/gradle-2.4
GRADLE_2_5=/gradle-2.5
export GRADLE_HOME=${GRADLE_HOME_PREFIX}${GRADLE_2_3}${GRADLE_HOME_SUFFIX}
export PATH=$GRADLE_HOME/bin:$PATH


echo "------------------------------------------------"
echo "   ~/.bashrc : Init path variable sucessfully"
echo "------------------------------------------------"

alias ch="history -c;history -w"
alias cd.="cd .."
alias ll="ls -l"
alias lal="ls -al"
alias la="ls -a"
alias lf="ls -f"
alias lc="ls -color"
alias ep="vim ~/.bashrc"
alias eps="subl ~/.bashrc"

#Git commands alias
alias gst="git status"
alias gal="git add --all"
alias gc="git commit -m"
alias gcd="git commit -m \"default commit\""
alias gp="git push"
alias gpm="git push origin master"
alias gacp="git add --all;git commit -m \"default commit\";git push"
alias gco="git checkout"
alias gb="git branch"
alias gbr="git branch -r"
alias gm="git merge"
alias grb="git rebase"
alias sp="source ~/.bashrc"
alias outp="echo $PATH"

#Maven home
# MAVEN_HOME_PREFIX=/usr/Tools/Maven
# MAVEN_HOME_SUFFIX=
# MAVEN_3_0_5=/apache-maven-3.0.5
# MAVEN_3_2_1=/apache-maven-3.2.1

# export M2_HOME=${MAVEN_HOME_PREFIX}${MAVEN_3_2_1}${MAVEN_HOME_SUFFIX}
# export PATH=$M2_HOME/bin:$PATH
#
