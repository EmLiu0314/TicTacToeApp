//
//  GameService.swift
//  TicTacToev1
//
//  Created by Liu, Emily on 2/26/24.
//

import Foundation

class GameService:ObservableObject{
    @Published var player1 = Player(gamePiece: .x, name: "Player 1") //@Published lets you track it over the app: Global Var
    @Published var player2 = Player(gamePiece: .o, name: "Player 1")
    @Published var possibleMoves = Moves.all
    
    @Published var gameOver = false
    
    var gameType = GameType.single
    var currentPlayer: Player {
        if player1.isCurrent{
            return player1
        }
        else{
            return player2
        }
    }
    var gameStarted:Bool{ //if only one line, default as a return statement
        player1.isCurrent || player2.isCurrent
    }
    
    var boardDisabled:Bool{
        gameOver || !gameStarted //board is disabled when game is over or hasn't started
    }
}
