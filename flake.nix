{
  description = "NodeJS releases for use with nix";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      with nixpkgs.legacyPackages.${system}; {
        packages = let
          build =
            callPackage "${nixpkgs}/pkgs/development/web/nodejs/nodejs.nix" {
              icu = icu68;
              python = python3;
            };
          build_v13 =
            callPackage "${nixpkgs}/pkgs/development/web/nodejs/nodejs.nix" {
              icu = icu66;
              python = python2;
            };
          v16_3_0 = (build {
            enableNpm = true;
            version = "16.3.0";
            sha256 = "eqtHuCwZcCxzsoNKYjw5MnMqFRhf3eoUud3HEJNvrF8=";
          });
          v16_2_0 = (build {
            enableNpm = true;
            version = "16.2.0";
            sha256 = "0Pk7mEKvuPI8B4YunNSCJucQRUf3skFdJQ/bdS0bNc8=";
          });
          v16_1_0 = (build {
            enableNpm = true;
            version = "16.1.0";
            sha256 = "0z0808mw674mshgbmhgngqfkrdix3b61f77xcdz7bwf1j87j7ad0";
          });
          v16_0_0 = (build {
            enableNpm = true;
            version = "16.0.0";
            sha256 = "00mada0vvybizygwhzsq6gcz0m2k864lfiiqqlnw8gcc3q8r1js7";
          });
          v15_14_0 = (build {
            enableNpm = true;
            version = "15.14.0";
            sha256 = "0vm6jdazqjd1plqsgngzvjrafv2d3mdahk6il4ray02gx97dq8l1";
          });
          v15_13_0 = (build {
            enableNpm = true;
            version = "15.13.0";
            sha256 = "1wd859bxd8j97xl98k61g0vwcmy83wvjj04fgway38aapk9abp4h";
          });
          v15_12_0 = (build {
            enableNpm = true;
            version = "15.12.0";
            sha256 = "0c8smzc7gbr7yg4y4z68976wk5741bspggag9h9laykq4i8bxfsy";
          });
          v15_11_0 = (build {
            enableNpm = true;
            version = "15.11.0";
            sha256 = "1lfjm0jgzbr0a874c04pddbjnvjcdyx5vyaakdhp0fa222i92w0s";
          });
          v15_10_0 = (build {
            enableNpm = true;
            version = "15.10.0";
            sha256 = "1i7fdlkkyh5ssncbvxmiz894a12mww4cmj7y4qzm9ddbbvqxhj3p";
          });
          v15_9_0 = (build {
            enableNpm = true;
            version = "15.9.0";
            sha256 = "1hyq6zj2z3kyfpa8znxa6jwzkw9bvb8mssalify2sjiv00f9dmxx";
          });
          v15_8_0 = (build {
            enableNpm = true;
            version = "15.8.0";
            sha256 = "1a9h88zdzk98k618jascfrivq3v51viw60sfyxn0ci0l33vf4fp2";
          });
          v15_7_0 = (build {
            enableNpm = true;
            version = "15.7.0";
            sha256 = "1nnv5337p23mhp0s2zgv75yysgfai0px8h1kks2mc8w0xnmwwppg";
          });
          v15_6_0 = (build {
            enableNpm = true;
            version = "15.6.0";
            sha256 = "1liqkh1gz1h37fln8xr5krbs2mqjn38n3sws2ydvk84wrpfq3prr";
          });
          v15_5_1 = (build {
            enableNpm = true;
            version = "15.5.1";
            sha256 = "0qbb4dwgsy1a82ihjxl6r8bj7mwjzb21s720y1rahisd5p69l8ic";
          });
          v15_5_0 = (build {
            enableNpm = true;
            version = "15.5.0";
            sha256 = "1wzcypb1kawc6m5q36cd31qjg7ljby8py9qg555m4bqm5gpvvfjg";
          });
          v15_4_0 = (build {
            enableNpm = true;
            version = "15.4.0";
            sha256 = "0kp0hckhjkmaqyvjpcj17rj6fw9fg3c95j78r2nr10bc65anjwms";
          });
          v15_3_0 = (build {
            enableNpm = true;
            version = "15.3.0";
            sha256 = "0h625hhswwv5rpijacxiak28fy5br8kpxrihfcjdqwm3dvyvkc1v";
          });
          v15_2_1 = (build {
            enableNpm = true;
            version = "15.2.1";
            sha256 = "0gp8z68h888x2ql64aiicgs7k065lg755cbjlnkbzdih5bh32qjn";
          });
          v15_2_0 = (build {
            enableNpm = true;
            version = "15.2.0";
            sha256 = "022kw29sjf46mgvwciihi2cmf9sfjpqi0xih8xpk7xiwfmx02ypn";
          });
          v15_1_0 = (build {
            enableNpm = true;
            version = "15.1.0";
            sha256 = "1fd0ck6nlmp937j00y17q2k9xszzwf4s383p1z4v4qzj0qzxflvk";
          });
          v15_0_1 = (build {
            enableNpm = true;
            version = "15.0.1";
            sha256 = "03xxnl7q96fmm7lalliwb9kmllz52jqrcsqn9cx9pzhwd1x97l5q";
          });
          v15_0_0 = (build {
            enableNpm = true;
            version = "15.0.0";
            sha256 = "0yrlzxrqb5j0qyj4qgzfxyvvd7c76hpslkiswj3cjcq70qbql4zn";
          });
          v14_17_0 = (build {
            enableNpm = true;
            version = "14.17.0";
            sha256 = "1vf989canwcx0wdpngvkbz2x232yccp7fzs1vcbr60rijgzmpq2n";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_16_1 = (build {
            enableNpm = true;
            version = "14.16.1";
            sha256 = "1hxsk83g2plv6vv3ir1ngca0rwqdy3lq70r504d2qv3msszdnjp4";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_16_0 = (build {
            enableNpm = true;
            version = "14.16.0";
            sha256 = "19nz2mhmn6ikahxqyna1dn25pb5v3z9vsz9zb2flb6zp2yk4hxjf";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_5 = (build {
            enableNpm = true;
            version = "14.15.5";
            sha256 = "0nv576mlmnf8pfs6yn7vsvwyg0a0xvs7m9pm4k131zjqx501v6z1";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_4 = (build {
            enableNpm = true;
            version = "14.15.4";
            sha256 = "177cxp4fhmglyx035j8smiy1bp5fz6q2phlcl0a2mdbldkvfrdxd";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_3 = (build {
            enableNpm = true;
            version = "14.15.3";
            sha256 = "1zplrfhsrqblvq2wxf5386wc9hf11k42jaw4mzgwy5dxx6dv3krj";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_2 = (build {
            enableNpm = true;
            version = "14.15.2";
            sha256 = "1076v19sxsfbccwdqg559bs86vr875axi5nhnskz57lngwkdyag0";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_1 = (build {
            enableNpm = true;
            version = "14.15.1";
            sha256 = "1g61vqsgq3jsipw2fckj68i4a4pi1iz1kbw7mlw8jmzp8rl46q81";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_15_0 = (build {
            enableNpm = true;
            version = "14.15.0";
            sha256 = "0fzv05f8rnc0s1a11k0cqfpgv9yawfbdd8qcl8zr25kv5ridhdip";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_14_0 = (build {
            enableNpm = true;
            version = "14.14.0";
            sha256 = "1rphkl3lqg0rzgg0r58bfv1hjw3rg96qvqcilk2927kbpps3bs84";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_13_1 = (build {
            enableNpm = true;
            version = "14.13.1";
            sha256 = "1xhmdhzsk3pfl4k8l0ipd9a1v5z807sl65mwkw51y7lc44gbsqb0";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_13_0 = (build {
            enableNpm = true;
            version = "14.13.0";
            sha256 = "1r06xnf4i5bkq8pgc9y25yhkm787xi3igay883w0a45l83abxfg0";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_12_0 = (build {
            enableNpm = true;
            version = "14.12.0";
            sha256 = "0c2mv208akyk10pmjfilxbdpi2gpb5zlb4h903lgqmr229kmnd3c";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_11_0 = (build {
            enableNpm = true;
            version = "14.11.0";
            sha256 = "1sq5j9fpcj0sb9062fik35chkc3lgdbwj56fcza186qsfzrf9iji";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_10_1 = (build {
            enableNpm = true;
            version = "14.10.1";
            sha256 = "1dymx9j3g6wbbdmw6083yg49ydxwfl2fgy9i8jxpngnskvwq4lrb";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_10_0 = (build {
            enableNpm = true;
            version = "14.10.0";
            sha256 = "00f7p2l3wpj12r6bxz7l6cxkipwl6in4qlzxrzkk0z81k32ph6s3";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_9_0 = (build {
            enableNpm = true;
            version = "14.9.0";
            sha256 = "1xkfivr0qci50ksg66szyasdlbiwh2j7ia4n6qc5csih2nvzcbh1";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_8_0 = (build {
            enableNpm = true;
            version = "14.8.0";
            sha256 = "0vghz7g7mih7idgknwzdc2zfw82qqq497m727ydhkas1wvj6i7lv";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_7_0 = (build {
            enableNpm = true;
            version = "14.7.0";
            sha256 = "0vwf523ahw0145wp17zkaflwm5823v1vz1kkglj25gzjydiiqbya";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_6_0 = (build {
            enableNpm = true;
            version = "14.6.0";
            sha256 = "153a07ffrmvwbsc78wrc0xnwymmzrhva0kn6mgnfi3086v3h1wss";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_5_0 = (build {
            enableNpm = true;
            version = "14.5.0";
            sha256 = "1d6w7ycdiqbkip7m6m8xly31qgx7ywakzvrnqdq8ini5sricjlgb";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_4_0 = (build {
            enableNpm = true;
            version = "14.4.0";
            sha256 = "1fbx1r3fflpsy0s7zknca0xyv2gg0ff5fl8czzsb79imqjlgcy0x";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_3_0 = (build {
            enableNpm = true;
            version = "14.3.0";
            sha256 = "0xqs9z0pxx8m5dk9gm1r9pxfk9vdmpvfsj94mfdkqar578nfm8gi";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_2_0 = (build {
            enableNpm = true;
            version = "14.2.0";
            sha256 = "1kqnkqkv2chw9s0hazbaba5y1555h526825xqk4rr441wcxcrzcf";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v14_1_0 = (build {
            enableNpm = true;
            version = "14.1.0";
            sha256 = "0pw39628y8qi2jagmmnfj0fkcbv00qcd1cqybiprf1v22hhij44n";
            patches = lib.optional stdenv.isDarwin
              "${nixpkgs}/pkgs/development/web/nodejs/./bypass-xcodebuild.diff";
          });
          v13_14_0 = (build_v13 {
            enableNpm = true;
            version = "13.14.0";
            sha256 = "1gi9nl99wsiqpwm266jdsa8g6rmjw4wqwgrkx9f2qk1y3hjcs0vf";
          });
          v13_13_0 = (build_v13 {
            enableNpm = true;
            version = "13.13.0";
            sha256 = "0wy7d2alli59gwl73hpaf3bz1wxkkcw5yjsgyz42695fz86p64b7";
          });
          v13_12_0 = (build_v13 {
            enableNpm = true;
            version = "13.12.0";
            sha256 = "199qcvzikdzw0h25v9dws77fff6hbvr8dj50lyzlnkya1dd6fzhd";
          });
          v13_11_0 = (build_v13 {
            enableNpm = true;
            version = "13.11.0";
            sha256 = "07r9xwjmiip9zmgfq77f3av3p93adc5cphj07idph1l8ws1j2h75";
          });
          v13_10_1 = (build_v13 {
            enableNpm = true;
            version = "13.10.1";
            sha256 = "14pvqwhilq210zn830zmh04a62rj3si0ijc4ihrhdf3dvghrx2c3";
          });
          v13_10_0 = (build_v13 {
            enableNpm = true;
            version = "13.10.0";
            sha256 = "11m8sisi3dmr70fpnb7xi6nljil3rm36liz0wfzd7kgxmv6p9mhj";
          });
          v13_9_0 = (build_v13 {
            enableNpm = true;
            version = "13.9.0";
            sha256 = "0z68hj3z2y8aj4bc14h77mj5l99jb4ljjc10gp0dpg8s4g1x5xzw";
          });
          v13_8_0 = (build_v13 {
            enableNpm = true;
            version = "13.8.0";
            sha256 = "1h437yvg43xci35rvp55gvb94rddkf4j9i9iw81bmkwhvb4h8qdv";
          });
          v13_7_0 = (build_v13 {
            enableNpm = true;
            version = "13.7.0";
            sha256 = "1fql5858aqny8krrqrgdp97kfia8xv0jlviwnm3akmv8i1i6xqkh";
          });
          v13_6_0 = (build_v13 {
            enableNpm = true;
            version = "13.6.0";
            sha256 = "0jf9nn5i1bijmrcgjvkp37fyz63lwwmxjh7nxipn2vw2qdx6ngsm";
          });
          v13_5_0 = (build_v13 {
            enableNpm = true;
            version = "13.5.0";
            sha256 = "1ng959fm8ls222mmn2vpkw4n4jba02qigpxc8p85jxfj36dsq4ak";
          });
          v13_4_0 = (build_v13 {
            enableNpm = true;
            version = "13.4.0";
            sha256 = "17fbb9j49g0nnp3vlz1pzcwshzhb0mzhfnly4xgfmkq2sxr123xb";
          });
          v13_3_0 = (build_v13 {
            enableNpm = true;
            version = "13.3.0";
            sha256 = "0j36jf0ybq470w91kzg28bcmxlml7ccl4swwklb6x1ibkz697np7";
          });
          v13_2_0 = (build_v13 {
            enableNpm = true;
            version = "13.2.0";
            sha256 = "0r0bbwnp77njhdmby7cs2g6yxfprri684s8h3gqq95ks7vgwgvhx";
          });
          v13_1_0 = (build_v13 {
            enableNpm = true;
            version = "13.1.0";
            sha256 = "0s6b2k7i89j9mxwyz271fvm6bf8jcz2v5kzmn0v5icrkpmn0ab6l";
          });
          v13_0_1 = (build_v13 {
            enableNpm = true;
            version = "13.0.1";
            sha256 = "1n9w1kvdzdg2j0a41wdkqcl893209lc018sd49xpy1cnr169h6vr";
          });
          v13_0_0 = (build_v13 {
            enableNpm = true;
            version = "13.0.0";
            sha256 = "0rs7qxmk17q114pg7l1k1dzk0vq4z9fhy773cbyr7z63mx03pzs5";
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
            };
          });
          "13" = v13_14_0.overrideAttrs (prev: {
            passthru = {
              "14"."0" = v13_14_0;
              "13"."0" = v13_13_0;
              "12"."0" = v13_12_0;
              "11"."0" = v13_11_0;
              "10"."1" = v13_10_1;
              "10"."0" = v13_10_0;
              "9"."0" = v13_9_0;
              "8"."0" = v13_8_0;
              "7"."0" = v13_7_0;
              "6"."0" = v13_6_0;
              "5"."0" = v13_5_0;
              "4"."0" = v13_4_0;
              "3"."0" = v13_3_0;
              "2"."0" = v13_2_0;
              "1"."0" = v13_1_0;
              "0"."1" = v13_0_1;
              "0"."0" = v13_0_0;
            };
          });
        };
      });
}
