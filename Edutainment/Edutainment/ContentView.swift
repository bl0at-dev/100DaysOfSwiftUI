//
//  ContentView.swift
//  Edutainment
//
//  Created by Karol Kusowski on 27/06/2026.
//

import SwiftUI

struct Question {
    let text: String
    let answer: Int
}

// Example question
// Question(text: "7 x 8", answer: 56)

struct ContentView: View {
    // Game settings screen
    @State private var gameIsActive = false
    @State private var tableRange = 2
    @State private var numberOfQuestions = 10
    let questionOptions = [1, 5, 10, 20]
    
    // Logic
    @State private var questions = [Question]()
    @State private var questionNumber = 0
    @State private var userAnswer = ""
    @State private var userScore = 0
    
    // Alert
    @State private var showingAlert = false
    @State private var alertTitle = ""
    
    var body: some View {
        NavigationStack {
            Form {
                if gameIsActive {
                    Section("Question \(questionNumber + 1) of \(numberOfQuestions)") {
                        Text(questions[questionNumber].text)
                            .font(.largeTitle)
                            .id(questionNumber)
                            .transition(.scale)
                        
                        TextField("Your answer ...", text: $userAnswer)
                            .keyboardType(.decimalPad)
                        
                        Button("Submit") {
                            submitAnswer()
                        }
                    }
                    Button("Go back to settings") {
                        resetGame()
                    }
                    Text("Your score: \(userScore)")
                } else {
                    Section("choose a range") {
                        Stepper("Multiplication table range: \(tableRange)", value: $tableRange, in: 2...10)
                    }
                    
                    Section("how many questions?") {
                        Picker("Select a number of questions", selection: $numberOfQuestions) {
                            ForEach(questionOptions, id: \.self) {
                                Text("\($0)")
                            }
                        }
                    }
                    
                    Button("Start game") {
                        startGame()
                    }
                }
            }
            .navigationTitle("Edutainment")
            .alert("Game finished", isPresented: $showingAlert) {
                Button("Play again") {
                    resetGame()
                }
            } message: {
                Text(alertTitle)
            }
            
        }
    }
    
    func generateQuestions() {
        
        for _ in 1...numberOfQuestions {
            let number1 = Int.random(in: 1...tableRange)
            let number2 = Int.random(in: 1...tableRange)
            let answer = number1 * number2
            
            questions.append(Question(text: "\(number1) x \(number2)", answer: answer))
        }
    }
    
    func startGame() {
        questions = []
        generateQuestions()
        
        questionNumber = 0
        userScore = 0
        gameIsActive = true
        
    }
    
    func submitAnswer() {
        if let answer = Int(userAnswer) {
            if answer == questions[questionNumber].answer {
                userScore += 1
            }
            
            userAnswer = ""
            
            if questionNumber == numberOfQuestions - 1 {
                alertTitle = """
                🎉 Great job! 🎉
                You were right \(userScore) out of \(numberOfQuestions)!
                """
                showingAlert = true
            } else {
                withAnimation {
                        questionNumber += 1
                    }
            }
            
        }
    }
    
    func resetGame() {
        questions = []
        userAnswer = ""
        questionNumber = 0
        userScore = 0
        gameIsActive = false
    }
}

#Preview {
    ContentView()
}
