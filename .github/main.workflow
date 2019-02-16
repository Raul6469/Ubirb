workflow "New workflow" {
  on = "push"
  resolves = ["vgaidarji/android-github-actions/build@v1.0.0"]
}

action "vgaidarji/android-github-actions/build@v1.0.0" {
  uses = "vgaidarji/android-github-actions/build@v1.0.0"
  args = "./gradlew clean assembleDebug"
}
