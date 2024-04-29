class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.1.0.0-alpha.tar.gz"
    sha256 "00b0e6fb38f0893f2366891d630076df05cc1a20918b16fa60bb00501e55a9cd"
    license "MIT"

    def install 
        bin.install "itzcli"
    end

    test do
        system "#{bin}/itzcli", "--version"
    end

end
