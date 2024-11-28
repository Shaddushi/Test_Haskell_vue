{-# LANGUAGE OverloadedStrings #-}

module Api where

import Web.Scotty
import Data.Aeson (object, (.=))

-- Définition des routes API
apiRoutes :: ScottyM ()
apiRoutes = do
    -- Route pour obtenir un message JSON
    get "/api/message" $ do
        json $ object ["message" .= ("Hello " :: String)]