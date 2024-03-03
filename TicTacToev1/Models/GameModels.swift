//
//  GameModels.swift
//  TicTacToev1
//
//  Created by Liu, Emily on 2/19/24.
//

import SwiftUI

enum GameType {//a data structure with different properties
    case single, bot, peer, undetermined
    
    var description: String{
        switch self{ //lower case self is a current instance of the structure
            //upper case Self is the structure itself
        case .single:
            return "Share your device and play against a friend."
            
        case .bot:
            return "Play against a device."
        
        case .peer:
            return "Invite someone near you with the app to play."
            
        case .undetermined:
            return "" //return nothing when you don't choose anything
        }
    }
    
}

enum GamePiece: String{
    case x, o
    var image:Image{
        Image(self.rawValue)
    }
}

struct Player{
    let gamePiece:GamePiece
    var name:String
    var moves:[Int] = [] //keeps tracks of what the user clicks on
    var isCurrent = false
    
    var isWinner:Bool{
        for moves in Moves.winningMoves {
            if moves.allSatisfy(self.moves.contains){ //self: whoever is active right now, whoever has control 
                return true
            }
            
        }
        return false
    }
}

enum Moves{
    static var all = [1,2,3,4,5,6,7,8,9]
    static var winningMoves = [[1,2,3],[4,5,6],[7,8,9],
                        [1,4,7],[2,5,8],[3,6,9],
                        [1,5,9],[3,5,7]]
}
