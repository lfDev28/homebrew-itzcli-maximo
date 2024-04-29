class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/itzcli.tar.gz"
    sha256 "867a4a816580a59c71cce7edc6978ded7dd66d9b230ebf2aec848a4a84173eb4"
    license "MIT"
    version "0.1.0"

    depends_on "go"

    def install 
        # Run the make files install command
        system "make", "install", "ITZ_VER=#{version}"

        # Move the binary to the bin folder
        bin.install "itz"

    end

    test do
        system "#{bin}/itz", "--version"
    end

end
