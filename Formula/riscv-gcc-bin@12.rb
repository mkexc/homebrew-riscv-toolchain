class RiscvGccBinAT12 < Formula
  desc "Pre-built RISC-V GNU toolchain for AMD64 macOS"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  url "https://github.com/riscv-collab/riscv-gnu-toolchain/archive/refs/tags/2023.03.14.tar.gz"
  version "2023.03.14-nightly"
  sha256 "5d8f3986ebebc5fc1c9c61f771b6b8851b3b3666d15a9d01e6549e3cd3c5b18e"

  revision 1

  bottle do
    root_url "https://github.com/mkexc/homebrew-riscv-toolchain/releases/download/v12.2.0-amd64"
    sha256 cellar: :any_skip_relocation, ventura: "6402e8e1f7ac3bfd278e7e45094d95971fdb1cf46fad6c79de03e26135f299f8"
  end

  def install
    bin.install Dir["bin/*"]
    prefix.install Dir["riscv64-unknown-elf", "include", "lib", "libexec", "share"]
  end

  test do
    system "true"
  end
end
