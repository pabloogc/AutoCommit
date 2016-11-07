class AutoCommit < Formula
  desc "http://whathecommit.com tool written in Nim"
  homepage "https://github.com/pabloogc/AutoCommit"
  url "https://github.com/pabloogc/AutoCommit/releases/download/0.1/autocommit-0.1.tar.gz"
  version "0.1"
  sha256 "db78eade67a415a4e25912b182136629986718eed88923bff971719778ddc556"

  def install
    bin.install "autocommit"
  end

  test do
    system "true"
  end
end
