#!/usr/bin/bash

################################################################################
# Utility to encrypt/decrypt files and directories.  Requires OpenSSL be
# be installed on host environment.
#
# Timothy Storm
#
################################################################################

# pring usage
usage() {
  appname=`basename $0`
  echo "usage: $appname -[e(ncrypt)|d(ecrypt)] -[p(assword)] password [files|directories...]"
  echo "encrypt: $appname -ep secret ~/file ~/dir"
  echo "decrypt: $appname -dp secret ~/file.aes ~/dir.aes"
}

# encrypt a single file/directory
encrypt() {
  name=`basename $1`
  tar -czf - $1 | openssl enc -e -aes256 -pass pass:$password -out $name.aes
}

# decrypt a single file/directory
decrypt() {
  openssl enc -d -aes256 -pass pass:$password -in $1 | tar -xz 
}

# capture command line arguments
while getopts ":edp:" opt; do
  case ${opt} in
    e )
        target="encrypt"
      ;;
    d )
        target="decrypt"
      ;;
    p )
        password="${OPTARG}"
      ;;
    * )
      usage
      exit 1
      ;;
  esac
done
shift $((OPTIND -1))

# verify proper usage
if [ -z "$target" ] || [ -z "$password" ]; then 
  usage
  exit 1
fi

# iterate files/directories and execute the target
for i in "$@"; do
  eval "$target" "$i"
  shift
done
