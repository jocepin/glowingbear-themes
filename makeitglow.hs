-- Filename: makeitglow.hs
-- Copyright (c) 2008-2017 Clement Trösa <iomonad@riseup.net>
-- 
-- Last-Updated: 05/03/2017 Wednesday 23:11:35
-- Description: Glowing Bear theme generator

{-# LANGUAGE OverloadedStrings #-}

import qualified Clay as C
import System.IO
import System.Directory
import Control.Monad
import Data.Text

checkdir ::  FilePath -> IO ()
checkdir p = do
  e <- doesDirectoryExist p
  case e of
    e -> createDirectory p
    _ -> putStrLn $ "Using "++ p ++" as out folder"

processTheme :: IO [FilePath] -> IO ()
processTheme template = do
  mapM_ putStrLn template
  putStrLn "Done."

main :: IO ()
main = do
  checkdir "dist"
  processTheme $ getDirectoryContents "colors"
