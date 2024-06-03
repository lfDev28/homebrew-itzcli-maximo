class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.0.1.33.tar.gz"
    sha256 "17f22ba735b6dd9ff1147840a22b89c92f7cbe329edbadc4b13580c883b5e14f"
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
