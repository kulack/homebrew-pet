class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.2.0"
  url "https://github.com/knqyf263/pet/releases/download/v#{version}/pet_#{version}_darwin_amd64.zip"
  sha256 "7043fbbbc5b97323b4682c32dab536a6537012c7b0051369ad34b110826b03d5"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
