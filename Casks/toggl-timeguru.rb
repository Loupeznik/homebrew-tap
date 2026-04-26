cask "toggl-timeguru" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.1"
  sha256 arm:   "f47e7ab5228b78bed381c2cf68462cd0ad4dfab432da25fa6babdeb5156d92e0",
         intel: "ab74ca2da05c68c6a70b3e263df167cdd7465b029aef8cd66b7bd1453fd821e1"

  url "https://github.com/Loupeznik/toggl-timeguru/releases/download/v#{version}/toggl-timeguru_#{version}_darwin_#{arch}.tar.gz"
  name "Toggl TimeGuru"
  desc "CLI + TUI for managing and analyzing Toggl Track time entries"
  homepage "https://github.com/Loupeznik/toggl-timeguru"

  binary "toggl-timeguru"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/toggl-timeguru"]
  end
end
