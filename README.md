# allgitstatus
Show results of git status for all repositories under specified directory.

## Example

``` bash session
~/work $ allgitstatus.sh .
################################################################
./cppcheck
################################################################
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
################################################################


################################################################
./Docker_cflow
################################################################
On branch feature/update_readme_to_run_with_rm
Your branch is up to date with 'origin/feature/update_readme_to_run_with_rm'.

nothing to commit, working tree clean
################################################################


################################################################
./libfixedpointnumber
################################################################
On branch feature/199/long_decimal_part_str
Your branch is up to date with 'origin/feature/199/long_decimal_part_str'.

nothing to commit, working tree clean
################################################################


################################################################
./plantuml-mode
################################################################
On branch develop
Your branch is up to date with 'origin/develop'.

nothing to commit, working tree clean
################################################################


################################################################
./setup-scoop
################################################################
On branch feature/nonportable_bucket
Your branch is up to date with 'origin/feature/nonportable_bucket'.

nothing to commit, working tree clean
################################################################


################################################################
./googletest
################################################################
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	googletest/generated/
	install_manifest.txt

nothing added to commit but untracked files present (use "git add" to track)
################################################################


################################################################
./libsatop
################################################################
On branch feature/9/float_add
Your branch is up to date with 'origin/feature/9/float_add'.

nothing to commit, working tree clean
################################################################


################################################################
./allgitstatus
################################################################
On branch feature/6/message_if_no_repository_found
Your branch is up to date with 'origin/feature/6/message_if_no_repository_found'.

nothing to commit, working tree clean
################################################################


################################################################
./WindowsEnvSetup
################################################################
On branch feature/simplify_workflow
Your branch is up to date with 'origin/feature/simplify_workflow'.

nothing to commit, working tree clean
################################################################


~/work $ 
```
