class TimeTracker < Formula
  desc "Tiny CLI to track project time to CSV"
  homepage "https://github.com/Scoyou/time_tracker"
  url "https://github.com/Scoyou/time_tracker/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "882417237bf18b662a834763f318ae06fe37b1d007b2890da858d11614aee282"
  license "MIT"

  head "https://github.com/Scoyou/time_tracker.git", branch: "main"

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
