class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.3.1/pet_0.3.1_darwin_amd64.tar.gz"
  version "0.3.1"
  sha256 "d67b55190343fd0957458eec9b97328dd2c155bae52eca21b01543f20873ca7a"
  
  depends_on "fzf"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
