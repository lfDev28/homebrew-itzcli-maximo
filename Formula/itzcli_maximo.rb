class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.0.1.32.tar.gz"
    sha256 "fb7d65e691849535dd8a34e9f5cac176b14d1a3972047d652f1b1671dc62df27"
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
