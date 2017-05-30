class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.2.3"
  url "https://github.com/knqyf263/pet/releases/download/v#{version}/pet_#{version}_darwin_amd64.zip"
  sha256 "00cc6c762c477f0973508bbcf51286d35017345963f48d7bd7418aaccdd92cb0"

  depends_on "peco"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
