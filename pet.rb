class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.2.1"
  url "https://github.com/knqyf263/pet/releases/download/v#{version}/pet_#{version}_darwin_amd64.zip"
  sha256 "637f68a640f91b46d75e8b787f316342831dc32cd3dcb3008b0f437c7c5a59a7"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
