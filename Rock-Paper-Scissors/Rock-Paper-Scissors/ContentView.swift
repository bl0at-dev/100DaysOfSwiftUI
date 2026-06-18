//
//  ContentView.swift
//  Rock-Paper-Scissors
//
//  Created by Karol Kusowski on 17/06/2026.
//

import SwiftUI

struct ContentView: View {
    let moves = ["🪨", "📄", "✂️"]
    
    @State private var cpuChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    @State private var scoreTitle = ""
    
    @State private var userScore = 0
    @State private var questionCount = 1
    @State private var showingResults = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Text("Computer played ...")
                    .font(.largeTitle)
                Text(moves[cpuChoice])
                    .font(.system(size: 100))
                
                if shouldWin {
                    Text("Which one wins?")
                        .foregroundStyle(.green)
                        .font(.title)
                } else {
                    Text("Which one loses?")
                        .foregroundStyle(.red)
                        .font(.title)
                }
                
                Text("Which one do you choose?")
                
                HStack {
                    ForEach(0..<3) { number in
                        Button(moves[number]) {
                            play(choice: number)
                        }
                        .font(.system(size: 80))
                    }
                }
                
                Spacer()
                
                Text("User score is \(userScore)")
                
                Spacer()
            }
            .alert("Game Over!", isPresented: $showingResults) {
                Button("Play again", action: reset)
            } message: {
                Text("Your score was \(userScore)")
            }
        }
    }
    func play(choice: Int) {
        let winningMoves = [1,2,0]
        let didWin: Bool
        
        if shouldWin {
            didWin = choice == winningMoves[cpuChoice]
        } else {
            didWin = winningMoves[choice] == cpuChoice
        }
        
        if didWin {
            userScore += 1
            
        } else {
            userScore -= 1
        }
        
        if questionCount == 10 {
            showingResults = true
        } else {
            cpuChoice = Int.random(in: 0..<3)
            shouldWin.toggle()
            questionCount += 1
        }
    }
    
    func reset() {
        shouldWin.toggle()
        questionCount = 1
        userScore = 0
        cpuChoice = Int.random(in: 0..<3)
    }
}

#Preview {
    ContentView()
}
