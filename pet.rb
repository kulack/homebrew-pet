class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.3.0/pet_0.3.0_darwin_amd64.tar.gz"
  version "0.3.0"
  sha256 "71a4fe85034f667de4fd409a6d0601b385b06e3904a589a1b38106883623aef8"
  
  depends_on "fzf"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
