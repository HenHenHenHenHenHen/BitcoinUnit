players = public(DynArray[address, 100])
losers = public(DynArray[address, 100])
odds = public(uint256)
playersTurn = public(uint256)


@external
def __init__():
    self.playersTurn = 0
    self.creator = tx.origin

@external
def setOdds (newOdds: uint256):
    self.odds = newOdds
    
@external
def addPlayer (player: address):
    isInGame: bool
    isInGame = false
    for i in players:
        if i == address:
            isInGame = true
    if not isALoser(player):
        if not isInGame:
            self.players.append (player)

@internal
def lose (player: address):
    for i in range(0, 100):
        self.players.pop()
    self.losers.append(player)
    self.playersTurn = 0

@internal
def random () -> uint256:
    return 1

@external
def play ():
    for i in players:
        randNumber: uint256
        randNumber = random ()
        if randNumber == 1:
            self.lose(i)
        else:
            self.playersTurn = self.playersTurn + 1

@external
def isALoser (person: address) -> bool:
    for i in self.losers:
        if i == adress:
            return true
    return false
