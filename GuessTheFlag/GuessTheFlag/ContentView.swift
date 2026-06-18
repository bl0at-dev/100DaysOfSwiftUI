//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Karol Kusowski on 11/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State private var userScore = 0
    @State private var questionCount = 0
    @State private var showingGameOver = false
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: .white, location: 0.3),
                .init(color: .red, location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.primary)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(Font.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            flagImage(name: countries[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Questions \(questionCount) out of 8")
                    .foregroundStyle(.primary)
                    .font(.title.weight(.bold))
                
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundStyle(.primary)
                    .font(.title.weight(.bold))
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is: \(userScore)")
        }
        .alert("Game Over!", isPresented: $showingGameOver) {
            Button("Restart Game", action: resetGame)
        } message: {
            if userScore > 4 {
                Text("You've got more than half right \(userScore)/8. Well done!")
            } else {
                Text("Try again, you got \(userScore)/8 right.")
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong, that's the flag of \(countries[number])"
        }
        
        questionCount += 1
        showingScore = true
    }
    
    func askQuestion() {
        if questionCount == 8 {
            showingGameOver = true
            return
        }
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame() {
        questionCount = 0
        userScore = 0
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}



#Preview {
    ContentView()
}
