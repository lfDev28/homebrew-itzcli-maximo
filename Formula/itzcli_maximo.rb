class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v0.1.0.tar.gz"
    sha256 "867a4a816580a59c71cce7edc6978ded7dd66d9b230ebf2aec848a4a84173eb4"
    license "MIT"

    def install 
        system "make install"
    end

    test do
        system "#{bin}/itz", "--version"
    end

end
