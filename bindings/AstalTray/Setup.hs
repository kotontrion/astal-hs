{-# LANGUAGE OverloadedStrings #-}

import Data.GI.CodeGen.CabalHooks (setupBinding, TaggedOverride(..))

import qualified GI.GObject.Config as GObject
import qualified GI.GdkPixbuf.Config as GdkPixbuf
import qualified GI.Gio.Config as Gio


main :: IO ()
main = setupBinding name version pkgName pkgVersion verbose overridesFile inheritedOverrides outputDir
  where name = "AstalTray"
        version = "0.1"
        pkgName = "gi-astal-tray"
        pkgVersion = "0.1.0"
        overridesFile = Nothing
        verbose = False
        outputDir = Nothing
        inheritedOverrides = [TaggedOverride "inherited:GObject" GObject.overrides, TaggedOverride "inherited:GdkPixbuf" GdkPixbuf.overrides, TaggedOverride "inherited:Gio" Gio.overrides]
