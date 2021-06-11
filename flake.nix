{
  description = "NodeJS releases for use with nix";
  inputs = { nixpkgs.url = "github:nixos/nixpkgs"; };
  outputs = inputs: {
    packages.x86_64-linux = with inputs.nixpkgs.legacyPackages.x86_64-linux;
      let
        buildNodejs = callPackage
          "${inputs.nixpkgs}/pkgs/development/web/nodejs/nodejs.nix" {
            icu = icu68;
            python = python3;
          };
        v16_3_0 = (buildNodejs {
          enableNpm = true;
          version = "16.3.0";
          sha256 = "eqtHuCwZcCxzsoNKYjw5MnMqFRhf3eoUud3HEJNvrF8=";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v16_2_0 = (buildNodejs {
          enableNpm = true;
          version = "16.2.0";
          sha256 = "0Pk7mEKvuPI8B4YunNSCJucQRUf3skFdJQ/bdS0bNc8=";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_9_0 = (buildNodejs {
          enableNpm = true;
          version = "15.9.0";
          sha256 = "vdeWHAA7Si28i1RpXdHaK/H5uTSq24/UdX6OL+Q32MM=";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_7_0 = (buildNodejs {
          enableNpm = true;
          version = "15.7.0";
          sha256 = "717Oq+2AI1aFnjNA1C+Iyj3tfTn7faHBhXWIe8Yo29o=";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
      in rec {
        "16" = v16_3_0.overrideAttrs (prev: {
            passthru = {
                "3"."0" = v16_3_0;
                "2"."0" = v16_2_0;
            };
        });
        "15" = v15_9_0.overrideAttrs (prev: {
            passthru = {
                "9"."0" = v15_9_0;
                "7"."0" = v15_7_0;
            };
        });
      };
  };
}
