# Configurable values.
INSTALL_DIR?=/usr/local/bin

# Not configurable values
SCRIPT_FILE_SRC_PATH:=allgitstatus.sh
SCRIPT_FILE_NAME:=$(notdir $(SCRIPT_FILE_SRC_PATH))
INSTALL_DEST_FILE_PATH:="$(INSTALL_DIR)/$(SCRIPT_FILE_NAME)"

all:

lint: sh-lint-all

install: $(INSTALL_DEST_FILE_PATH)

# Install the script.
$(INSTALL_DEST_FILE_PATH): $(SCRIPT_FILE_SRC_PATH)
	cp -f $? $@

# Rules for shell script.
DIRS_WHICH_HAVE_SH_FILES := .
SH_FILES := $(foreach dir, $(DIRS_WHICH_HAVE_SH_FILES), $(wildcard $(dir)/*.sh))
SH_CHECK := $(addsuffix .shellcheck, $(SH_FILES))

sh-lint-all: $(SH_CHECK)

$(SH_CHECK): %.shellcheck: %
	shellcheck --shell=dash $*
