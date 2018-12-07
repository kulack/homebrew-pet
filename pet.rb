class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/kulack/pet"
  url "https://github.com/kulack/pet/releases/download/v0.3.3/pet_0.3.3_darwin_amd64.tar.gz"
  version "0.3.3"
  sha256 ""
  
  depends_on "fzf"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
