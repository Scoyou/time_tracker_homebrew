class TimeTracker < Formula
  desc "Tiny CLI to track project time to CSV"
  homepage "https://github.com/Scoyou/time_tracker"
  url "https://github.com/Scoyou/time_tracker/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  head "https://github.com/<YOUR_GITHUB_USER>/<YOUR_REPO>.git", branch: "main"

  def install
    # If your script file in the repo is named `time` at the repo root,
    # install it as `tt` to avoid clashing with /usr/bin/time and gnu-time.
    bin.install "time_track.sh" => "tt"
    # If your file is named differently (e.g. time.sh), change accordingly:
    # bin.install "time.sh" => "tt"
  end

  test do
    # The script prints a help header that contains 'Time Tracker'
    assert_match "Time Tracker", shell_output("#{bin}/tt --help")
  end
end
