{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Prelude.Semigroupoids.Data.Functor.Bind(
  concat
, concatMap
, (>>=)
, (=<<)
) where

import Data.Functor.Bind(Bind((>>-)), (-<<), join)

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

(=<<) ::
  Bind f =>
  (a -> f b)
  -> f a
  -> f b
(=<<) =
  (-<<)
