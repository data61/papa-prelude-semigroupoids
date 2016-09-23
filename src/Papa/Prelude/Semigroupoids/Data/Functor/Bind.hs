{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RebindableSyntax #-}

module Papa.Prelude.Semigroupoids.Data.Functor.Bind(
  concat
, concatMap
, (>>=)
, (=<<)
, join
, Bind((>>-))
) where

import Data.Functor.Bind(
    (-<<)
  , join
  , Bind((>>-))
  )

concat ::
  Bind f =>
  f (f a)
  -> f a
concat =
  join

concatMap ::
  Bind f =>
  (a -> f b)
  -> f a
  -> f b
concatMap =
  (-<<)

(>>=) ::
  Bind f =>
  f a
  -> (a -> f b)
  -> f b
(>>=) =
  (>>-)

infixl 1 >>=

(=<<) ::
  Bind f =>
  (a -> f b)
  -> f a
  -> f b
(=<<) =
  (-<<)

infixr 1 =<<

