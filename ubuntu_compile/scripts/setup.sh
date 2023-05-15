cat > setup.sh <<EOF
#!/bin/sh

if [ -z "$1" ]; then
  echo "which build?"
  false
else
  export xrddir=$1
  if [ -d $xrddir ]; then
    export PATH=$PATH:$xrddir:$xrddir/XrdCl
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$xrddir:$xrddir/XrdCl:$xrddir/XrdClHttp/src:$xrddir/XrdEc
  else
    echo "xrddir $xrddir not found"
    false
  fi
fi
EOF
chmod 755 setup.sh
