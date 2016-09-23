{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Prelude.Semigroupoids.Data.Functor.Alt (
  (<|>)
, Alt((<!>), many, some)
) where

import Data.Functor.Alt(
    Alt((<!>), many, some)  
  )

(<|>) ::
  Alt f =>
  f a
  -> f a
  -> f a
(<|>) =
  (<!>)

infixl 3 <|>

