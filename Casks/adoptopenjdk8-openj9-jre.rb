cask 'adoptopenjdk8-openj9-jre' do
  version '8,232:b09'
  sha256 'b3379cf73318f194e8b842199c93668ab631a2782d499c3eb145d65fa300f804'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u232-b09.1_openj9-0.17.0/OpenJDK8U-jre_x64_mac_openj9_8u232b09_openj9-0.17.0.pkg'
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases/latest"
  name 'AdoptOpenJDK 8'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK8U-jre_x64_mac_openj9_8u232b09_openj9-0.17.0.pkg'

  uninstall pkgutil: [
                       "net.adoptopenjdk.#{version.before_comma}-openj9.jre",
                     ]
end
