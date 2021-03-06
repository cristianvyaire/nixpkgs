# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, bindingsDSL, conduit, HUnit, lzma, QuickCheck, resourcet
, testFramework, testFrameworkHunit, testFrameworkQuickcheck2
, transformers
}:

cabal.mkDerivation (self: {
  pname = "lzma-conduit";
  version = "1.1.1";
  sha256 = "1i1khkxpia5hp3f0p7h656yvbgwsxffpl2czxjbkiw6iz31rapwg";
  buildDepends = [ bindingsDSL conduit resourcet transformers ];
  testDepends = [
    conduit HUnit QuickCheck resourcet testFramework testFrameworkHunit
    testFrameworkQuickcheck2
  ];
  extraLibraries = [ lzma ];
  meta = {
    homepage = "http://github.com/alphaHeavy/lzma-conduit";
    description = "Conduit interface for lzma/xz compression";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    broken = self.stdenv.isLinux && self.stdenv.isi686;
  };
})
