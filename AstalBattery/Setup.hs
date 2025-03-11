{-# LANGUAGE OverloadedStrings #-}

import Data.GI.CodeGen.CabalHooks (setupBinding, TaggedOverride(..))

import qualified GI.GObject.Config as GObject


main :: IO ()
main = setupBinding name version pkgName pkgVersion verbose overridesFile inheritedOverrides outputDir
  where name = "AstalBattery"
        version = "0.1"
        pkgName = "gi-astal-battery"
        pkgVersion = "0.1.0"
        overridesFile = Nothing
        verbose = False
        outputDir = Nothing
        inheritedOverrides = [TaggedOverride "inherited:GObject" GObject.overrides]
