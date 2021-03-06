# All kind of bash aliases

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias e='vim'
alias reload='source ~/.bashrc'
alias monitor='monitor_and_action'

function monitor_and_action()
{
  file=$1
  shift
  cmd=$*

  echo '*** Monitor file: ' $file
  echo '*** Action: ' $cmd

  while inotifywait $file -e modify . ; do
    ($cmd)
    sleep 1
    echo
    echo '*** RELOAD ***'
  done
}