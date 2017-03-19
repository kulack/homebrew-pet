class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.1.0"
  url "https://github.com/knqyf263/pet/releases/download/v#{version}/pet_#{version}_darwin_amd64.zip"
  sha256 "c4d4491c5cdaf06e6e38d8baee20a9c7e55486c692e0226282cbb809361c3b51"

  depends_on "peco"

  def install
    bin.install Dir['pet']
  end

  test do
    system "#{bin}/pet"
  end
end
