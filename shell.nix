with import <nixpkgs> {};
let
  # nixpkgs.local = builtins.fetchGit {
  #   url = "/home/tbox/nixpkgs";
  #   ref = "644b3a7a68a993ed44de3c58855d86360f4f6826";
  # };
  # localNixpkgs = import nixpkgs.local {};

  #websocketppSrc = fetchFromGitHub {
  #  owner = "zaphoyd";
  #  repo = "websocketpp";
  #  rev = "new-version-tag"; # Specify the new version or commit hash
  #  sha256 = "new-sha256"; # Update with the correct hash
  #}



 stableChannel = import (fetchTarball {
    url = "https://nixos.org/channels/nixos-23.05/nixexprs.tar.xz"; # Change this URL to the desired stable channel
  }) {};

in
pkgs.mkShell {
  buildInputs = [
    pkgs.gcc
    pkgs.python3
    pkgs.python3Packages.virtualenv
    pkgs.python3Packages.pypdf2
    pkgs.python3Packages.cinemagoer
    #pkgs.python3Packages.spacy
    #pkgs.python3Packages.spacy_models.en_core_web_sm
    #pkgs.python3Packages.spacy_models.en_core_web_lg
    #pkgs.python3Packages.spacy_models.xx_ent_wiki_sm
    pkgs.python3Packages.unidecode

    pkgs.nodejs_22
    pkgs.python3Packages.libtorrent-rasterbar
    pkgs.python3Packages.tqdm
    pkgs.python3Packages.pytesseract
    pkgs.python3Packages.pkgconfig
    pkgs.boost 
    pkgs.openssl
    pkgs.tesseract 
    pkgs.python3Packages.opencv4
    pkgs.python3Packages.scikit-learn
    pkgs.stdenv
    pkgs.curlFull
    # localNixpkgs.llm
    pkgs.libtorrent-rasterbar
    pkgs.httplib
    pkgs.nlohmann_json
    pkgs.drogon
    pkgs.jsoncpp
    pkgs.c-ares.dev
    pkgs.libuuid
    pkgs.zlib
    pkgs.sqlite
    pkgs.brotli
    pkgs.php82Extensions.pdlib
    pkgs.websocketpp

    #pkgs.v8
    stableChannel.v8
  ];

  cmakeFlags = [
    "-DCMAKE_PREFIX_PATH=${pkgs.libtorrent-rasterbar}"
  ];
 
  shellHook = ''
    
    export OPENSSL_ROOT_DIR=${pkgs.openssl.dev}
    echo "OPENSSL_ROOT_DIR set to: $OPENSSL_ROOT_DIR"

    export OPENSSL_LIB_DIR=${pkgs.openssl.out}/lib
    echo "OPENSSL_LIB_DIR set to: $OPENSSL_LIB_DIR"

    export OPENSSL_INCLUDE_DIR=${pkgs.openssl.dev}/include
    echo "OPENSSL_INCLUDE_DIR set to: $OPENSSL_INCLUDE_DIR"

    export OPENSSL_CRYPTO_LIBRARY=${pkgs.openssl.out}/lib/libcrypto.so
    echo "OPENSSL_CRYPTO_LIBRARY set to: $OPENSSL_CRYPTO_LIBRARY"

    export Boost_INCLUDE_DIR=${pkgs.boost.dev}/include
    echo "Boost_INCLUDE_DIR set to: $Boost_INCLUDE_DIR"

    export LIBTORRENT_DIR=${pkgs.libtorrent-rasterbar}
    echo "LIBTORRENT_DIR set to: $LIBTORRENT_DIR"

    export PKGCONFIG_PATH=${pkgs.python3Packages.pkgconfig}
    echo "PKGCONFIG_PATH set to: $PKGCONFIG_PATH"

    export LIBCURL_PATH=${pkgs.curlFull.dev}
    echo "LIBCURL_PATH set to: $LIBCURL_PATH"

    export HTTPLIB=${pkgs.httplib}
    echo "HTTPLIB set to: $HTTPLIB"

    export CARES=${pkgs.c-ares.dev}
    echo "CARES set to: $CARES"

    export libuuid=${pkgs.libuuid.dev}
    echo "libuuid set to: $libuuid"

    export ZLIB=${pkgs.zlib.dev}
    echo "ZLIB set to: $zlib"

    export ZLIB2=${pkgs.zlib}
    echo "ZLIB2 set to: $zlib2"


    export sqlite=${pkgs.sqlite.dev}
    echo "sqlite set to: $sqlite"

    export brotli=${pkgs.brotli.dev}
    echo "brotli set to: $brotli"

    export nodejs=${pkgs.nodePackages_latest.nodejs}
    echo "nodejs set to: $nodejs"

    export v8=${stableChannel.v8}
    echo "v8 set to: $v8"

    export CMAKE_FLAGS="-DOPENSSL_USE_STATIC_LIBS=FALSE $CMAKE_FLAGS -DOPENSSL_CRYPTO_LIBRARY=${pkgs.openssl.out}/lib/libcrypto.so -DOPENSSL_SSL_LIBRARY=${pkgs.openssl.out}/lib/libssl.so"

    export PKG_CONFIG_PATH="$OPENSSL_ROOT_DIR/lib/pkgconfig:$PKG_CONFIG_PATH"
    export PKG_CONFIG_PATH="$BROTLI/lib/pkgconfig:$PKG_CONFIG_PATH"
    export PKG_CONFIG_PATH="$v8/lib/pkgconfig:$PKG_CONFIG_PATH"

  '';
#shellHook = ''
  #  VK_LAYER_PATH = "${pkgs.vulkan-validation-layers}/share/vulkan/explicit_layer.d"
  #  VK_ICD_FILENAMES = "${pkgs.vulkan-loader}/share/vulkan/icd.d/nvidia_icd.json"
  #'';


   

}
