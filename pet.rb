class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.2.2"
  url "https://github.com/knqyf263/pet/releases/download/v#{version}/pet_#{version}_darwin_amd64.zip"
  sha256 "2b4b2c91fe76f395935ff16f22f9a0787c61f35cb869b343ceff5f41d568c63c"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
