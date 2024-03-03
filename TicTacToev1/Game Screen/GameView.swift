//
//  GameView.swift
//  TicTacToev1
//
//  Created by Liu, Emily on 2/26/24.
//

import SwiftUI


struct GameView: View {
@Environment (\.dismiss) var dismiss //dismiss object to the environement class
    var body: some View {
        NavigationStack{
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            } .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    //logic for end game button
                    Button("End Game"){
                        dismiss() //creating an instance
                    } .buttonStyle(.bordered)
                }
            }// end of toolbar
            .navigationTitle("Tic Tac Toe") //
            
        }// end of navigation stack
    }
}

#Preview {
    GameView()
}
