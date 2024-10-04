//
//  ContentView.swift
//  PaperRockScissors2
//
//  Created by Rodrigo Carballo on 10/3/24.
//

import SwiftUI

struct ContentView: View {
    let moves = ["✊", "✋", "✌️"]

    @State private var computerChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    
    @State private var score = 0
    @State private var questionCount = 1
    @State private var showingResults = false
    
    var body: some View {
        VStack {
            VStack {
                Spacer()

                Text("Computer has played…")
                    .font(.headline)
                Text(moves[computerChoice])
                    .font(.system(size: 200))

                if shouldWin {
                    Text("Which one wins?")
                        .foregroundStyle(.green)
                        .font(.title)
                } else {
                    Text("Which one loses?")
                        .foregroundStyle(.red)
                        .font(.title)
                }

                HStack {
                    ForEach(0..<3) { number in
                        Button(moves[number]) {
                            
                            
                            
                            
                        }
                        .font(.system(size: 80))
                    }
                }

                Spacer()

                Text("Score: ???")
                    .font(.subheadline)

                Spacer()
            }
        }
    }
    
    func play(choice: Int) {
        let winningMoves = [1, 2, 0]
        let didWin: Bool

        if shouldWin {
            didWin = choice == winningMoves[computerChoice]
        } else {
            didWin = winningMoves[choice] == computerChoice
        }
    }
}




#Preview {
    ContentView()
}
