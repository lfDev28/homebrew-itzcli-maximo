class ItzcliMaximo < Formula
    desc "CLI for Techzone Provisioning - Maximo Team customization of root itzcli"
    homepage "https://github.com/lfDev28/itzcli"
    url "https://github.com/lfDev28/itzcli/archive/v.0.1.33.tar.gz"
    sha256 "96a7dd18e1331c934757bb4bc6be8d0b24a3a81a971b05d51fd14ce16b6e08ea"
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
