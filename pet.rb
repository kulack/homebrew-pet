class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.0.2/pet_0.0.2_darwin_amd64.zip"
  sha256 "45c7aa03b743c1872d46273c3967377fbb71ce21b8b61ffb8bdddfd6068e15b5"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
