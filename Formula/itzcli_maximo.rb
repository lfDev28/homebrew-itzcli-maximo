class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v0.1.0.tar.gz"
    sha256 "cab38d4557359ffe8218899da6a217f51be1939d2c54ecb099d21174709d46c6"
    license "MIT"

    def install 
        bin.install "itz"
    end

    test do
        system "#{bin}/itz", "--version"
    end

end
