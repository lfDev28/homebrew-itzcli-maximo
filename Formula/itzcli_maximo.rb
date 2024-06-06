class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.0.1.34.tar.gz"
    sha256 "b67ee621a9a3e03f18744306d7130099c4f990f8f78c0ac32a1edb8f36139536"
    license "MIT"
    version "v.0.1.34"

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
