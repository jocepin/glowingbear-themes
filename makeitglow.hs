-- Filename: makeitglow.hs
-- Copyright (c) 2008-2017 Clement Trösa <iomonad@riseup.net>
-- 
-- Last-Updated: 05/02/2017 Tuesday 08:48:14
-- Description: Glowing Bear theme generator

{-# LANGUAGE OverloadedStrings #-}

import qualified Clay as C
import System.IO
import System.Directory
import Control.Monad

checkdir ::  FilePath -> IO ()
checkdir p = do
  e <- doesDirectoryExist p
  case e of
    e -> createDirectory p
    _ -> putStrLn $ "Using "++ p ++" as out folder"

main :: IO ()
main = do
  checkdir "dist"
  putStrLn "Done"
