setup() {
  source /var/batslib/batslib.bash
}

check_commit() {
  grep ".*" */.git/COMMIT_EDITMSG
}

@test "Check for git init" {
  run check_commit
  [ "$status" -eq 0 ]
}