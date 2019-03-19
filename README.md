# haximilian-git-extras
My personal supplements to [tj/git-extras](https://github.com/tj/git-extras).

## Featured Extras
 - `git nuke` Removes the current git repository, optionally replacing it with a new one or removing the contents of the working directory.

## Installation
1. Download the latest source tarball: `wget https://github.com/haximilian/haximilian-git-extras/releases/download/v1.0.0.0/haximilian-git-extras.1.0.0.0.tar.gz`
2. Unpack the source code: `tar xzvf haximilian-git-extras.*.tar.gz`
3. Remove the archive & enter the source directory: `rm haximilian-get-extrax.*.tar.gz; cd haximilian-get-extras-*/build`
4. Configure the build environment: `../configure`
5. Run the build script: `make`
6. Make sure everything works the way it's supposed to: `make check`
7. **(optional)** Install the package: `sudo make install`
8. **(optional)** Check that the installation was successful: `make installcheck`

### Building From Source
1. Clone the latest version of the repository into the current directory: `git clone https://github.com/haximilian/haximilian-git-extras.git`
2. Enter the working directory: `cd haximilian-git-extras`
3. **(optional)** Make whatever changes you like.
4. **(optional)** Commit your changes: `git add *; git commit`
5. **(optional)** After making your changes, prepare a new release version: `git tag -a "v1.0.0-LOCAL_BUILD.0" -m "In-House release, version 0"`
6. Bootstrap the autotools build environment:`./bootstrap.sh`
7. Enter the build directory: `cd build`
8. Configure the build environment: `../configure`
9. Run the build script: `make`
10. Make sure everything works the way it's supposed to: `make check`
11. **(optional)** Install the package: `sudo make install`
12. **(optional)** Check that the installation was successful: `make installcheck`

## [<img src="https://opensource.org/files/osi_symbol.png" width="50">](https://opensource.org/licenses/Apache-2.0) License
Copyright &copy; 2019 Haximilian<br/>
**This project is licensed under the [Apache License, Version 2.0 (Apache-2.0)](https://opensource.org/licenses/Apache-2.0).**<br>
For a complete copy of the license, please see the included "LICENSE" file.

### License Exceptions
 - The file "*/build-aux/git-version-gen*" is a helper script from *Free Software Foundation, Inc* and is licensed under the **[GPLv3+](http://www.gnu.org/licenses/)** software license.
