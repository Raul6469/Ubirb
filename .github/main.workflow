workflow "New workflow" {
  on = "push"
  resolves = ["Build app"]
}

action "Build app" {
  uses = "Raul6469/android-gradle-action@master"
  args = "clean assembleDebug"
  secrets = ["ANDROID_LICENCE"]
}
