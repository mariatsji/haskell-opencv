{ mkDerivation, aeson, async, base, bindings-DSL, bytestring, Cabal
, containers, criterion, data-default, deepseq, directory, Glob
, haskell-src-exts, haskell-src-meta, inline-c, inline-c-cpp
, JuicyPixels, lens, lib, linear, mtl, opencv4, primitive
, QuickCheck, random, repa, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text, transformers, vector
}:
mkDerivation {
  pname = "opencv";
  version = "0.0.2.1";
  src = ./.;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [
    aeson base bindings-DSL bytestring containers data-default deepseq
    inline-c inline-c-cpp JuicyPixels linear mtl primitive repa
    template-haskell text transformers vector
  ];
  libraryPkgconfigDepends = [ opencv4 ];
  testHaskellDepends = [
    async base bytestring containers data-default deepseq directory
    Glob haskell-src-exts haskell-src-meta JuicyPixels lens linear
    primitive QuickCheck random repa tasty tasty-hunit tasty-quickcheck
    template-haskell text transformers vector
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion linear repa vector
  ];
  homepage = "https://github.com/LumiGuide/haskell-opencv";
  description = "Haskell binding to OpenCV-3.x";
  license = lib.licenses.bsd3;
}
