class Yapf < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/google/yapf"
  url "https://files.pythonhosted.org/packages/2a/78/066d92807c532b4bdbfece8fcb5a20130df0476dfa924d6108f72f4efabf/yapf-0.25.0.tar.gz"
  sha256 "8aa7f9abdb97b4da4d3227306b88477982daafef0a96cc41639754ca31f46d55"
  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end
end
