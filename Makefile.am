AUTOMAKE_OPTIONS = foreign
bin_SCRIPTS=scripts/git-nuke
man_MANS = man/git-nuke.1

EXTRA_DIST = $(top_srcdir)/.version
BUILT_SOURCES = $(top_srcdir)/.version

# Generate the version files:
$(top_srcdir)/.version:
	            echo $(VERSION) > $@-t && mv $@-t $@

dist-hook:
	            echo $(VERSION) > $(distdir)/.tarball-version
