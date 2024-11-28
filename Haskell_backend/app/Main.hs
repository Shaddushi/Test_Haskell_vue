{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Data.Aeson (object, (.=))
import Network.Wai.Middleware.Cors (cors, CorsResourcePolicy(..), simpleCors)

main :: IO ()
main = scotty 8080 $ do
    middleware simpleCors
    get "/api/route" $ do
        json $ object ["message" .= ("Test Haskell" :: String)]