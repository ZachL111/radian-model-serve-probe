import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 52 70 14 22 12
  expect (score signalcase_1 == 24)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 60 72 19 9 13
  expect (score signalcase_2 == 107)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 72 76 27 7 10
  expect (score signalcase_3 == 117)
  expect (classify signalcase_3 == "review")
