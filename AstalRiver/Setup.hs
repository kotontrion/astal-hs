{-# LANGUAGE OverloadedStrings #-}

import Data.GI.CodeGen.CabalHooks (setupBinding, TaggedOverride(..))

import qualified GI.GObject.Config as GObject
import qualified GI.Gio.Config as Gio


main :: IO ()
main = setupBinding name version pkgName pkgVersion verbose overridesFile inheritedOverrides outputDir
  where name = "AstalRiver"
        version = "0.1"
        pkgName = "gi-astal-river"
        pkgVersion = "0.1.0"
        overridesFile = Just "AstalRiver.overrides"
        verbose = False
        outputDir = Nothing
        inheritedOverrides = [TaggedOverride "inherited:GObject" GObject.overrides, TaggedOverride "inherited:Gio" Gio.overrides]
