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

infixl 4 *>

(>>) ::
  Apply f =>
  f a
  -> f b
  -> f b
(>>) =
  (.>)

infixl 1 >>

(<*) ::
  Apply f =>
  f b
  -> f a
  -> f b
(<*) =
  (<.)

infixl 4 <*

