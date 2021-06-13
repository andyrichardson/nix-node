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
        v16_1_0 = (buildNodejs {
          enableNpm = true;
          version = "16.1.0";
          sha256 = "0z0808mw674mshgbmhgngqfkrdix3b61f77xcdz7bwf1j87j7ad0";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v16_0_0 = (buildNodejs {
          enableNpm = true;
          version = "16.0.0";
          sha256 = "00mada0vvybizygwhzsq6gcz0m2k864lfiiqqlnw8gcc3q8r1js7";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_14_0 = (buildNodejs {
          enableNpm = true;
          version = "15.14.0";
          sha256 = "0vm6jdazqjd1plqsgngzvjrafv2d3mdahk6il4ray02gx97dq8l1";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_13_0 = (buildNodejs {
          enableNpm = true;
          version = "15.13.0";
          sha256 = "1wd859bxd8j97xl98k61g0vwcmy83wvjj04fgway38aapk9abp4h";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_12_0 = (buildNodejs {
          enableNpm = true;
          version = "15.12.0";
          sha256 = "0c8smzc7gbr7yg4y4z68976wk5741bspggag9h9laykq4i8bxfsy";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_11_0 = (buildNodejs {
          enableNpm = true;
          version = "15.11.0";
          sha256 = "1lfjm0jgzbr0a874c04pddbjnvjcdyx5vyaakdhp0fa222i92w0s";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_10_0 = (buildNodejs {
          enableNpm = true;
          version = "15.10.0";
          sha256 = "1i7fdlkkyh5ssncbvxmiz894a12mww4cmj7y4qzm9ddbbvqxhj3p";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_9_0 = (buildNodejs {
          enableNpm = true;
          version = "15.9.0";
          sha256 = "1hyq6zj2z3kyfpa8znxa6jwzkw9bvb8mssalify2sjiv00f9dmxx";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_8_0 = (buildNodejs {
          enableNpm = true;
          version = "15.8.0";
          sha256 = "1a9h88zdzk98k618jascfrivq3v51viw60sfyxn0ci0l33vf4fp2";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_7_0 = (buildNodejs {
          enableNpm = true;
          version = "15.7.0";
          sha256 = "1nnv5337p23mhp0s2zgv75yysgfai0px8h1kks2mc8w0xnmwwppg";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_6_0 = (buildNodejs {
          enableNpm = true;
          version = "15.6.0";
          sha256 = "1liqkh1gz1h37fln8xr5krbs2mqjn38n3sws2ydvk84wrpfq3prr";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_5_1 = (buildNodejs {
          enableNpm = true;
          version = "15.5.1";
          sha256 = "0qbb4dwgsy1a82ihjxl6r8bj7mwjzb21s720y1rahisd5p69l8ic";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_5_0 = (buildNodejs {
          enableNpm = true;
          version = "15.5.0";
          sha256 = "1wzcypb1kawc6m5q36cd31qjg7ljby8py9qg555m4bqm5gpvvfjg";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_4_0 = (buildNodejs {
          enableNpm = true;
          version = "15.4.0";
          sha256 = "0kp0hckhjkmaqyvjpcj17rj6fw9fg3c95j78r2nr10bc65anjwms";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_3_0 = (buildNodejs {
          enableNpm = true;
          version = "15.3.0";
          sha256 = "0h625hhswwv5rpijacxiak28fy5br8kpxrihfcjdqwm3dvyvkc1v";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_2_1 = (buildNodejs {
          enableNpm = true;
          version = "15.2.1";
          sha256 = "0gp8z68h888x2ql64aiicgs7k065lg755cbjlnkbzdih5bh32qjn";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_2_0 = (buildNodejs {
          enableNpm = true;
          version = "15.2.0";
          sha256 = "022kw29sjf46mgvwciihi2cmf9sfjpqi0xih8xpk7xiwfmx02ypn";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_1_0 = (buildNodejs {
          enableNpm = true;
          version = "15.1.0";
          sha256 = "1fd0ck6nlmp937j00y17q2k9xszzwf4s383p1z4v4qzj0qzxflvk";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_0_1 = (buildNodejs {
          enableNpm = true;
          version = "15.0.1";
          sha256 = "03xxnl7q96fmm7lalliwb9kmllz52jqrcsqn9cx9pzhwd1x97l5q";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v15_0_0 = (buildNodejs {
          enableNpm = true;
          version = "15.0.0";
          sha256 = "0yrlzxrqb5j0qyj4qgzfxyvvd7c76hpslkiswj3cjcq70qbql4zn";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_17_0 = (buildNodejs {
          enableNpm = true;
          version = "14.17.0";
          sha256 = "1vf989canwcx0wdpngvkbz2x232yccp7fzs1vcbr60rijgzmpq2n";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_16_1 = (buildNodejs {
          enableNpm = true;
          version = "14.16.1";
          sha256 = "1hxsk83g2plv6vv3ir1ngca0rwqdy3lq70r504d2qv3msszdnjp4";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_16_0 = (buildNodejs {
          enableNpm = true;
          version = "14.16.0";
          sha256 = "19nz2mhmn6ikahxqyna1dn25pb5v3z9vsz9zb2flb6zp2yk4hxjf";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_5 = (buildNodejs {
          enableNpm = true;
          version = "14.15.5";
          sha256 = "0nv576mlmnf8pfs6yn7vsvwyg0a0xvs7m9pm4k131zjqx501v6z1";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_4 = (buildNodejs {
          enableNpm = true;
          version = "14.15.4";
          sha256 = "177cxp4fhmglyx035j8smiy1bp5fz6q2phlcl0a2mdbldkvfrdxd";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_3 = (buildNodejs {
          enableNpm = true;
          version = "14.15.3";
          sha256 = "1zplrfhsrqblvq2wxf5386wc9hf11k42jaw4mzgwy5dxx6dv3krj";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_2 = (buildNodejs {
          enableNpm = true;
          version = "14.15.2";
          sha256 = "1076v19sxsfbccwdqg559bs86vr875axi5nhnskz57lngwkdyag0";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_1 = (buildNodejs {
          enableNpm = true;
          version = "14.15.1";
          sha256 = "1g61vqsgq3jsipw2fckj68i4a4pi1iz1kbw7mlw8jmzp8rl46q81";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_15_0 = (buildNodejs {
          enableNpm = true;
          version = "14.15.0";
          sha256 = "0fzv05f8rnc0s1a11k0cqfpgv9yawfbdd8qcl8zr25kv5ridhdip";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_14_0 = (buildNodejs {
          enableNpm = true;
          version = "14.14.0";
          sha256 = "1rphkl3lqg0rzgg0r58bfv1hjw3rg96qvqcilk2927kbpps3bs84";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_13_1 = (buildNodejs {
          enableNpm = true;
          version = "14.13.1";
          sha256 = "1xhmdhzsk3pfl4k8l0ipd9a1v5z807sl65mwkw51y7lc44gbsqb0";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_13_0 = (buildNodejs {
          enableNpm = true;
          version = "14.13.0";
          sha256 = "1r06xnf4i5bkq8pgc9y25yhkm787xi3igay883w0a45l83abxfg0";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_12_0 = (buildNodejs {
          enableNpm = true;
          version = "14.12.0";
          sha256 = "0c2mv208akyk10pmjfilxbdpi2gpb5zlb4h903lgqmr229kmnd3c";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_11_0 = (buildNodejs {
          enableNpm = true;
          version = "14.11.0";
          sha256 = "1sq5j9fpcj0sb9062fik35chkc3lgdbwj56fcza186qsfzrf9iji";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_10_1 = (buildNodejs {
          enableNpm = true;
          version = "14.10.1";
          sha256 = "1dymx9j3g6wbbdmw6083yg49ydxwfl2fgy9i8jxpngnskvwq4lrb";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_10_0 = (buildNodejs {
          enableNpm = true;
          version = "14.10.0";
          sha256 = "00f7p2l3wpj12r6bxz7l6cxkipwl6in4qlzxrzkk0z81k32ph6s3";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_9_0 = (buildNodejs {
          enableNpm = true;
          version = "14.9.0";
          sha256 = "1xkfivr0qci50ksg66szyasdlbiwh2j7ia4n6qc5csih2nvzcbh1";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_8_0 = (buildNodejs {
          enableNpm = true;
          version = "14.8.0";
          sha256 = "0vghz7g7mih7idgknwzdc2zfw82qqq497m727ydhkas1wvj6i7lv";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_7_0 = (buildNodejs {
          enableNpm = true;
          version = "14.7.0";
          sha256 = "0vwf523ahw0145wp17zkaflwm5823v1vz1kkglj25gzjydiiqbya";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_6_0 = (buildNodejs {
          enableNpm = true;
          version = "14.6.0";
          sha256 = "153a07ffrmvwbsc78wrc0xnwymmzrhva0kn6mgnfi3086v3h1wss";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_5_0 = (buildNodejs {
          enableNpm = true;
          version = "14.5.0";
          sha256 = "1d6w7ycdiqbkip7m6m8xly31qgx7ywakzvrnqdq8ini5sricjlgb";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_4_0 = (buildNodejs {
          enableNpm = true;
          version = "14.4.0";
          sha256 = "1fbx1r3fflpsy0s7zknca0xyv2gg0ff5fl8czzsb79imqjlgcy0x";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_3_0 = (buildNodejs {
          enableNpm = true;
          version = "14.3.0";
          sha256 = "0xqs9z0pxx8m5dk9gm1r9pxfk9vdmpvfsj94mfdkqar578nfm8gi";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_2_0 = (buildNodejs {
          enableNpm = true;
          version = "14.2.0";
          sha256 = "1kqnkqkv2chw9s0hazbaba5y1555h526825xqk4rr441wcxcrzcf";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_1_0 = (buildNodejs {
          enableNpm = true;
          version = "14.1.0";
          sha256 = "0pw39628y8qi2jagmmnfj0fkcbv00qcd1cqybiprf1v22hhij44n";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
        v14_0_0 = (buildNodejs {
          enableNpm = true;
          version = "14.0.0";
          sha256 = "0r67a3srrrf62109byv1pnpmp4dxagrmkbv3rsaic46ky4lh28kf";
          patches = lib.optional stdenv.isDarwin ./bypass-xcodebuild.diff;
        });
      in rec {
        "16" = v16_3_0.overrideAttrs (prev: {
            passthru = {
                "3"."0" = v16_3_0;
                "2"."0" = v16_2_0;
                "1"."0" = v16_1_0;
                "0"."0" = v16_0_0;
            };
        });
        "15" = v15_14_0.overrideAttrs (prev: {
            passthru = {
                "14"."0" = v15_14_0;
                "13"."0" = v15_13_0;
                "12"."0" = v15_12_0;
                "11"."0" = v15_11_0;
                "10"."0" = v15_10_0;
                "9"."0" = v15_9_0;
                "8"."0" = v15_8_0;
                "7"."0" = v15_7_0;
                "6"."0" = v15_6_0;
                "5"."1" = v15_5_1;
                "5"."0" = v15_5_0;
                "4"."0" = v15_4_0;
                "3"."0" = v15_3_0;
                "2"."1" = v15_2_1;
                "2"."0" = v15_2_0;
                "1"."0" = v15_1_0;
                "0"."1" = v15_0_1;
                "0"."0" = v15_0_0;
            };
        });
        "14" = v14_17_0.overrideAttrs (prev: {
          passthru = {
            "17"."0" = v14_17_0;
            "16"."1" = v14_16_1;
            "16"."0" = v14_16_0;
            "15"."5" = v14_15_5;
            "15"."4" = v14_15_4;
            "15"."3" = v14_15_3;
            "15"."2" = v14_15_2;
            "15"."1" = v14_15_1;
            "15"."0" = v14_15_0;
            "14"."0" = v14_14_0;
            "13"."1" = v14_13_1;
            "13"."0" = v14_13_0;
            "12"."0" = v14_12_0;
            "11"."0" = v14_11_0;
            "10"."1" = v14_10_1;
            "10"."0" = v14_10_0;
            "9"."0" = v14_9_0;
            "8"."0" = v14_8_0;
            "7"."0" = v14_7_0;
            "6"."0" = v14_6_0;
            "5"."0" = v14_5_0;
            "4"."0" = v14_4_0;
            "3"."0" = v14_3_0;
            "2"."0" = v14_2_0;
            "1"."0" = v14_1_0;
            "0"."0" = v14_0_0;
          };
        });
      };
  };
}
