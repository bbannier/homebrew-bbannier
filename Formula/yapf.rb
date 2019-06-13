class Yapf < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/google/yapf"
  url "https://codeload.github.com/google/yapf/tar.gz/v0.27.0"
  sha256 "366a178882e4701d3522298c92f89cc41b47c8df77035c45f5b4ad0e56233b93"
  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end
end
