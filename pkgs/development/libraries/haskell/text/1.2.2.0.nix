# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, deepseq, HUnit, QuickCheck, random, testFramework
, testFrameworkHunit, testFrameworkQuickcheck2
}:

cabal.mkDerivation (self: {
  pname = "text";
  version = "1.2.2.0";
  sha256 = "3fb3921488b4c10f1a389f4ad1a1ae44cf1a6d1ce4305a55d1d7c745cff50088";
  buildDepends = [ deepseq ];
  testDepends = [
    deepseq HUnit QuickCheck random testFramework testFrameworkHunit
    testFrameworkQuickcheck2
  ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/bos/text";
    description = "An efficient packed Unicode text type";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
