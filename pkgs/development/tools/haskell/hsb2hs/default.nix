# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, filepath, preprocessorTools }:

cabal.mkDerivation (self: {
  pname = "hsb2hs";
  version = "0.3.1";
  sha256 = "8ad800820554f273ada083dfce2f463d920fb1ceb053255023a4c883b090f9d8";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ filepath preprocessorTools ];
  meta = {
    description = "Preprocesses a file, adding blobs from files as string literals";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
