#Default is: "\h:\W \u\$ "
export PS1="\@ \u: \W $ "
export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH

encPass() {
  mkdir ~/.pass
  if [ -z $1 ]
  then
    echo ""
  	echo "You must enter an alias for the password you want to set: setpass mywebsite"
    echo ""
  else
    echo -n "Enter your password: "
    read pass
    if [ -z $pass ]
    then
     echo "Password save was canceled."
    else
      echo -n "$pass" | openssl enc -e -aes-256-cbc -out ~/.pass/$1
    fi
  fi
}
alias setpass=encPass

decPass() {
  if [ -z $1 ]
  then
    echo ""
  	echo "You must enter an alias for the password you want to retrieve: getpass mywebsite"
    echo ""
  else
    openssl enc -d -aes-256-cbc -in ~/.pass/$1 | pbcopy
    echo ""
    echo "Password copied to clipboard."
    echo ""
  fi
}
alias getpass=decPass

doGitCommit() {
  git add --all
  git commit -m "$1"
}
alias gitcommit=doGitCommit

doGitPull() {
  if [ -z $1 ]
  then
    git pull origin master
  else
    git pull origin $1
  fi
}
alias gitpull=doGitPull

doGitPush() {
  if [ -z $1 ]
  then
    git push origin master
  else
    git push origin $1
  fi
}
alias gitpush=doGitPush

handleSymLink() {
  if [ -z $1 ] 
    then
      echo "You did not specify a project name."
    else
      local LASTDIR=$(pwd)
      cd ~/Sites/$1
      ln -s "$LASTDIR"
      cd "$LASTDIR"
  fi
}
alias asslink=handleSymLink

installWordPress() {
  curl -O http://wordpress.org/latest.tar.gz
  tar -xzf latest.tar.gz
  rm latest.tar.gz
  mv wordpress/* .
  rm -rf wordpress
  cp wp-config-sample.php wp-config.php
  open wp-config.php
  echo "" > .htaccess
  chmod 777 .htaccess
  mkdir assets
  chmod 777 assets
  rm -r wp-content/themes/*
  rm -r wp-content/plugins/*
  cp wp-content/index.php wp-content/themes/
  cp wp-content/index.php wp-content/plugins/
}
alias wpinstall=installWordPress

installLaunchpad() {
  cd wp-content/themes/
  curl -OL https://github.com/robertbrodrecht/launchpad/archive/master.zip
  unzip master.zip
  rm master.zip 
  mv launchpad-master launchpad
  open ./launchpad
  cd ../../
}
alias lpinstall=installLaunchpad

# Handy commands.
alias rootedit="sudo -b \"/Applications/TextWrangler.app/Contents/MacOS/TextWrangler\""
alias apacherestart="sudo apachectl restart"
alias dnsflush="sudo dscacheutil -flushcache; sudo apachectl restart"
alias webon="sudo apachectl start && sudo /usr/local/mysql/support-files/mysql.server start"
alias weboff="sudo apachectl stop && sudo /usr/local/mysql/support-files/mysql.server stop"
alias hiddenhide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"
alias hiddenshow="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias tailerror="tail -f /private/var/log/apache2/error_log"
