{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RebindableSyntax #-}

module Papa.Prelude.Semigroupoids.Data.Functor.Apply(
  (*>)
, (>>)
, (<*)
, Apply(
    (<.>), (.>), (<.)
  )
, liftF2
, liftF3
, (<..>)
) where

import Data.Functor.Apply(
    Apply((<.>), (.>), (<.))
  , liftF2
  , liftF3
  , (<..>)
  )

(*>) ::
  Apply f =>
  f a
  -> f b
  -> f b
(*>) =
  (.>)

(>>) ::
  Apply f =>
  f a
  -> f b
  -> f b
(>>) =
  (.>)

(<*) ::
  Apply f =>
  f b
  -> f a
  -> f b
(<*) =
  (<.)
