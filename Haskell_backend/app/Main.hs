{-# LANGUAGE OverloadedStrings #-}

import Api
import Web.Scotty
import Data.Aeson (object, (.=))
import Network.Wai.Middleware.Cors (cors, CorsResourcePolicy(..), simpleCors)

main :: IO ()
main = scotty 8080 $ do
    middleware simpleCors
    apiRoutes