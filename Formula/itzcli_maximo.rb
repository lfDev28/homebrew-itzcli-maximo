class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v0.1.31.tar.gz"
    sha256 "b14bf305ff68740fff297424566ca225f0acecdcbd0cec6cc2b1e6e8766b506d"
    license "MIT"
    version "v.0.1.32"

    depends_on "go"

    def install 
        # Run the make files install command
        system "make", "install", "ITZ_VER=#{version}"

        # Move the binary to the bin folder
        bin.install "itzcli"

        bin.install "itz"


    end

    test do
        system "#{bin}/itz", "--version"
    end

end
