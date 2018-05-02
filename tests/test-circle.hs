module Main where

import Circle

import Test.Hspec

main = hspec $ do
  describe "circle" $ do
    it "is round" $ do
      let circ = Circle (Point (X 0, Y 0), Radius 1)
      let poly = interpCircle 4 circ

      length poly `shouldBe` 4

      -- (fst poly) `shouldBe` Point (X 1, Y 0)
