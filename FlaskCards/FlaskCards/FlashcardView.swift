//
//  FlashcardView.swift
//  FlaskCards
//
//  Created by desmond on 18/7/2024.
//

import SwiftUI

struct FlashcardView: View {
    var subject: String
    
    var body: some View {
        Text("Flashcards for \(subject)")
            .font(.largeTitle)
            .padding()
    }
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(subject: "Math")
    }
}
