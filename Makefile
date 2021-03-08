all:

lint: sh-lint-all

# Rules for shell script.
DIRS_WHICH_HAVE_SH_FILES := .
SH_FILES := $(foreach dir, $(DIRS_WHICH_HAVE_SH_FILES), $(wildcard $(dir)/*.sh))
SH_CHECK := $(addsuffix .shellcheck, $(SH_FILES))

sh-lint-all: $(SH_CHECK)

$(SH_CHECK): %.shellcheck: %
	shellcheck --shell=dash $*
