

AC_INIT([haximilian-git-extras],
        m4_esyscmd([build-aux/git-version-gen .tarball-version]),
        [haximilian@gmail.com],
        [],
        [https://github.com/haximilian/haximilian-git-extras])
AC_PREREQ([2.6.8])

AC_CONFIG_AUX_DIR(build-aux)
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_MACRO_DIR([m4])
AC_PROG_LN_S

AC_SUBST(VERSION)


# Generate warning messages:
auto_warning="WARNING: This is an auto-generated file. Do not edit."
AC_SUBST([auto_warning])
auto_timestamp="Generated on: $(date)"
AC_SUBST([auto_timestamp])

AC_CONFIG_FILES([
  Makefile
  scripts/git-nuke:scripts/git-nuke.sh
])

AC_OUTPUT()
