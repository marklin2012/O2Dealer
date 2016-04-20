#if os(Linux)
  import Glibc
srandom(UInt32(clock()))
#endif

import O2DeckOfPlayingCards

let numberOfCards = 10

var deck = O2Deck.standard52CardDeck()
deck.shuffle()

for _ in 0..<numberOfCards {
  guard let card = deck.deal() else {
    print("No More Cards!")
    break
  }
  
  print(card)
}