import MyPrelude

--import qualified Spec.Matching      as Matching
--import qualified Spec.Str2Int       as StrSpec
--import qualified Spec.MarketString  as MarketStr
--import Lib.OrderBook.Types

import Test.Tasty
import Test.Tasty.SmallCheck  as SC
import Test.Hspec             as HS
import Test.Hspec.Runner



scDepth = 6

main = return ()
--   hspecWith defaultConfig { configSmallCheckDepth = scDepth } MarketStr.spec2
--   defaultMain properties

{-

properties :: TestTree
properties = localOption (SC.SmallCheckDepth scDepth) $
   testGroup "Properties" [scProps]

scProps = testGroup "(checked by SmallCheck)"
  [ SC.testProperty "slippageSell ob x == marketSell ob (resQuoteQty $ slippageSell ob x)" $
      \ob slippage' -> Matching.propSellSlippageQuote (==) ob slippage'
  , SC.testProperty "slippageBuy ob x == marketBuy ob (resQuoteQty $ slippageBuy ob x)" $
      \ob slippage' -> Matching.propBuySlippageQuote (==) ob slippage'
  , SC.testProperty "obBids ob `startsWith` init (resOrders $ marketSell ob qty)" $
      \ob qty -> Matching.propSellOrdersBegin startsWith ob qty
  , SC.testProperty "obAsks ob `startsWith` init (resOrders $ marketBuy ob qty)" $
      \ob qty -> Matching.propBuyOrdersBegin startsWith ob qty
  , SC.testProperty "sell at zero slippage returns the first buy orders at same price" $
      \ob -> Matching.propSellZeroSlippage (==) ob
  , SC.testProperty "buy at zero slippage returns the first sell orders at same price" $
      \ob -> Matching.propBuyZeroSlippage (==) ob

  ]
  where a `startsWith` b = take (length b) a == b

-}