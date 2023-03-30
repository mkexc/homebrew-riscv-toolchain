class RiscVGccBin12 < Formula
  desc "Pre-built GNU toolchain for RISC-V embedded processors"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  url "https://github.com/riscv-collab/riscv-gnu-toolchain/archive/refs/tags/2023.03.14.tar.gz"
  version "2023.03.14-nightly"
  sha256 "5d8f3986ebebc5fc1c9c61f771b6b8851b3b3666d15a9d01e6549e3cd3c5b18e"

  revision 1

  bottle do
    root_url "https://github.com/mkexc/homebrew-riscv-toolchain/releases/download/v12.2.0-amd64"
    sha256 cellar: :any_skip_relocation, ventura:  "01836c5cfb5c847decaad00c620cd29d83eb299006bd86f3bf1d1b55ccb96f76"
  end

  def install
      bin.install Dir["bin/*"]
      prefix.install Dir["riscv64-unknown-elf", "include", "lib", "libexec", "share"]
  end
  
  test do
      system "true"
  end
  
end
