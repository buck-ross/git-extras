#!/bin/sh

#################################################################
# @auto_warning@
# @auto_timestamp@
#################################################################

# Version information:
VERSION='@VERSION@'

# Print the version information:
print_version() {
  git --version
  echo "git nuke $VERSION"
}

# Print the help information:
print_help() {
cat << EOF
usage: git nuke [-d, --data] [-n, --new] [-r, --remote]
  -d, --data: deletes the contents of the working directory along with the repository data
  -n, --new: initializes a new git repository to replace the old one
EOF
}

# Define internal state variables:
DATA=n
NEW=n

# Parse the arguments:
while [ "$1" != "" ]; do
  case $1 in
    -d | --data )
      if [ "$DATA" = "y" ]; then
        echo "ERROR: \"-d|--data\" should not be used more than once" >&2
        exit 1
      fi
      DATA=y
      ;;

    -h | --help )
      # Print the help information & exit:
      print_help
      exit 0
      ;;

    -v | --version )
      # Print the version information & exit:
      print_version
      exit 0
      ;;

    -n | --new )
      if [ "$NEW" = "y" ]; then
        echo "ERROR: \"-n|--new\" should not be used more than once" >&2
        exit 1
      fi
      NEW=y
      ;;

    * )
      echo "ERROR: unrecognised argument $1" >&2
      exit 1
      ;;
  esac
  shift
done

# Assert that the repository exists:
if ! git rev-parse --git-dir > /dev/null 2>&1; then
  echo "ERROR: No valid git repository found" >&2
  exit 1
fi

# Prompt the user to confirm the nuke:
echo "WARNING: the repository will be completely deleted."
read -p "Are you sure you want to proceed? [y/N] " REPLY
echo
if [ "$REPLY" != "y" ] && [ "$REPLY" != "Y" ]; then
  echo ">> Aborting ..."
  exit 0
else
  echo ">> Continuing ..."
fi

# Get to the root of the repository:
STARTING_DIR=$(pwd)
cd $(git rev-parse --show-toplevel)

# Remove the repository:
rm -rf .git
echo ">> Repository removed"

# If applicable, delete the repository contents:
if [ "$DATA" = "y" ]; then
  rm -rf ./* > /dev/null
  echo ">> Working directory cleared"
fi

# If applicable, create a new repository:
if [ "$NEW" = "y" ]; then
  git init > /dev/null
  echo ">> New repository initialized"
fi

# Cleanup:
if [ -d $STARTING_DIR ]; then
  cd $STARTING_DIR
fi
