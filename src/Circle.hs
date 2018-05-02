{-# LANGUAGE DeriveFoldable             #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE InstanceSigs               #-}
module Circle where

newtype Tolerance a = Tolerance a

newtype X a = X a
  deriving Foldable
newtype Y a = Y a
  deriving Foldable
newtype Point a = Point (X a, Y a)
  deriving Foldable

newtype PolyLine a = PolyLine [Point a]
  deriving Foldable

newtype Radius a = Radius a
newtype Circle a = Circle (Point a, Radius a)


interpCircle :: Int -> Circle a -> PolyLine a
interpCircle pointCount circ = undefined
