function cdb() {
  cd ~/src/WatchBeam/backend
}

function cdf() {
  cd ~/src/WatchBeam/frontend
}

function flushdns() {
  sudo killall -HUP mDNSResponder
}

function vimhosts() {
  sudo vim /private/etc/hosts
}

function port() {
  local PORT=$1
  echo $PORT
  sudo echo $PORT
  sudo lsof -i TCP:$PORT | grep LISTEN
}

function attu4() {
  ssh -X myu94@attu4.cs.washington.edu
}

function attu4mount() {
  sshfs myu94@attu4.cs.washington.edu:/homes/iws/myu94 -ocache=no -onolocalcaches -ovolname=ssh csehomedir
}

function dargon01() {
  ssh root@104.236.50.121
}

function dargon01mount() {
  sshfs root@104.236.50.121:/ -ocache=no -onolocalcaches -ovolname=ssh dargon01
}


alias bash="bash --login"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
