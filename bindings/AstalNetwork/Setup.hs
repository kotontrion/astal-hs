{-# LANGUAGE OverloadedStrings #-}

import Data.GI.CodeGen.CabalHooks (setupBinding, TaggedOverride(..))

import qualified GI.GObject.Config as GObject
import qualified GI.NM.Config as NM


main :: IO ()
main = setupBinding name version pkgName pkgVersion verbose overridesFile inheritedOverrides outputDir
  where name = "AstalNetwork"
        version = "0.1"
        pkgName = "gi-astal-network"
        pkgVersion = "0.1.0"
        overridesFile = Nothing
        verbose = False
        outputDir = Nothing
        inheritedOverrides = [TaggedOverride "inherited:GObject" GObject.overrides, TaggedOverride "inherited:NM" NM.overrides]
