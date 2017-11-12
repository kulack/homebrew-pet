class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.2.4/pet_0.2.4_darwin_amd64.zip"
  version "0.2.4"
  sha256 "3fc1317fe9011456b219b4034967938103bcd066132c008e454830985f9cbd63"

  depends_on "fzf"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
