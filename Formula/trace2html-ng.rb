class Trace2htmlNg < Formula
  desc "Utility from Google Trace Viewer to convert JSON traces to HTML"
  homepage "https://github.com/catapult-project/catapult/tree/master/tracing"
  head "https://github.com/catapult-project/catapult.git"

  bottle :unneeded

  conflicts_with "trace2html",
    :because => "both install `trace2html` binary"


  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"tracing/bin/trace2html"
  end

  test do
    touch "test.json"
    system "#{bin}/trace2html", "test.json"
    assert_predicate testpath/"test.html", :exist?
  end
end
