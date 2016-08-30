module Papa.Prelude.Semigroupoids.Data.Semigroupoid(
  (.)
) where

import Data.Semigroupoid(Semigroupoid(o))

(.) ::
  Semigroupoid cat =>
  cat b c
  -> cat a b
  -> cat a c
(.) =
  o
