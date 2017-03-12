class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.0.1/pet_0.0.1_darwin_amd64.zip"
  sha256 "13685b4ebd9e3b36fa85f3b5f2d980197928114f7b7649c183575847bace764a"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
