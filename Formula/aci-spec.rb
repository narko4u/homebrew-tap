class AciSpec < Formula
  include Language::Python::Virtualenv

  desc "Autonomous Company Interface — validate and explore ACI implementations"
  homepage "https://github.com/narko4u/aci-spec"
  url "https://github.com/narko4u/aci-spec/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "fadd73d5d721a19085240bf7b77137d2a054ed652c9072e397a36c587cb44639"
  version "0.9.0"
  license "MIT"

  depends_on "python@3.12"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ACI Validator", shell_output("#{bin}/aci-validate --help")
  end
end
