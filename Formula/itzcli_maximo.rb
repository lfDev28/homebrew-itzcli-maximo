class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.1.0.0-alpha.tar.gz"
    sha256 "f7e87eb3406b405dcd620c18f701b7111614257afdf8d031e27e38b622d25d72"
    license "MIT"

    def install 
        bin.install "itz"
    end

    test do
        system "#{bin}/itz", "--version"
    end

end
