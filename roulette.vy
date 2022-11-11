class Roulette:
    def __init__(players, losers, odds: uint256, playersTurn: uint256, creator):
        self.players = DynArray[address, 100]
        self.losers = DynArray[address, 99]
        self.odds = odds
        self.playersTurn = playersTurn
        self.creator = tx.origin

    @external
    def setOdds (newOdds: uint256):
        self.odds = newOdds
    
    @external
    def addPlayer (player: address):
        isInGame: bool
        isInGame = false
        for i in players
            if i == address:
                isInGame = true
        if !isALoser:
            if !isInGame:
                players.append (player)

    @internal
    def lose (player: address):
        for i in range(0, 100):
            players.pop ()
        losers.append (player)

    @external
    def random () -> uint256:
        return 1

    @external
    def play ()
        for i in players:
            randNumber: uint256
            randNumber = random ()
            if randNumber == 1:
                lose (i)
            else:
                playersTurn = playersTurn + 1

    @external
    isALoser (person: address) -> bool:
        for i in losers:
            if i == adress:
                return true
        return false
