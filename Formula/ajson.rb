class Ajson < Formula
  include Language::Python::Virtualenv

  desc "Agent JSON — superset of JSON with comments, multi-line strings, and references"
  homepage "https://github.com/narko4u/ajson"
  url "https://files.pythonhosted.org/packages/f2/c2/34556e8ea2cb22d3060ba30267b14c112609a6d0dd21da2d9e2db888b393/ajson_spec-0.1.1.tar.gz"
  sha256 "ed6cf6ad8f4cf6da7314ab0cd485df01d867e06c8ce4e194d1c1cf3706a7192e"
  version "0.1.1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/ajson --version")
    assert_match "AJSON v#{version}", output
  end
end
