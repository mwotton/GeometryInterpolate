{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Circle where

newtype Tolerance a = Tolerance a

newtype X a = X a
newtype Y a = Y a
newtype Point a = Point (X a, Y a)

newtype PolyLine a = PolyLine [Point a]
instance Foldable PolyLine where
  foldMap :: (Monoid m, Foldable t) => (a -> m) -> t a -> m
  foldMap f (PolyLine pl) = foldMap f pl

newtype Radius a = Radius a
newtype Circle a = Circle (Point a, Radius a)


interpCircle :: Int -> Circle a -> PolyLine a
interpCircle pointCount circ = undefined
