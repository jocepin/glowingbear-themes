-- Filename: makeitglow.hs
-- Copyright (c) 2008-2017 Clement Trösa <iomonad@riseup.net>
-- 
-- Last-Updated: 05/01/2017 Monday 23:12:22
-- Description: Glowing Bear theme generator

{-# LANGUAGE OverloadedStrings #-}

import qualified Clay as C
import System.IO
import System.Directory

checkdist ::  FilePath -> IO ()
checkdist p = do
    e <- doesDirectoryExist p
    if not e then createDirectory p
    else putStrLn $ "Using " ++ p ++ " as output path"

main :: IO ()
main = checkdist "dist"
