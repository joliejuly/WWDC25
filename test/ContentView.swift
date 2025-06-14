import FoundationModels
import Playgrounds


#Playground {
    let session = LanguageModelSession(instructions: "You are William Shakespeare. Answer in his style.")
    let response = try await session.respond(to: "Describe weather for today in couple of sentences.")
    
    

}

import SwiftUI

struct GradientButtonData {
    let title: String
    let colors: [Color]
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    let shadowColor: Color
    let action: () -> Void
}

struct GradientButton: View {
    let data: GradientButtonData
    
    var body: some View {
        Button(action: data.action) {
            Text(data.title)
                .font(.title2)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: data.colors),
                        startPoint: data.startPoint,
                        endPoint: data.endPoint
                    )
                )
                .cornerRadius(12)
                .shadow(color: data.shadowColor, radius: 8, x: 0, y: 4)
        }
        .buttonStyle(.plain)
    }
}

struct ContentView: View {
    private let buttons: [GradientButtonData] = [
        GradientButtonData(
            title: "First",
            colors: [Color.purple, Color.blue, Color.cyan],
            startPoint: .topLeading,
            endPoint: .bottomTrailing,
            shadowColor: Color.purple.opacity(0.3),
            action: { print("First tapped") }
        ),
        GradientButtonData(
            title: "Second",
            colors: [Color.orange, Color.pink, Color.yellow],
            startPoint: .leading,
            endPoint: .trailing,
            shadowColor: Color.orange.opacity(0.25),
            action: { print("Second tapped") }
        ),
        GradientButtonData(
            title: "Third",
            colors: [Color.green, Color.teal, Color.mint],
            startPoint: .top,
            endPoint: .bottomTrailing,
            shadowColor: Color.green.opacity(0.25),
            action: { print("Third tapped") }
        )
    ]
    
    var body: some View {
        VStack(spacing: 24) {
            ForEach(0..<buttons.count, id: \.self) { i in
                GradientButton(data: buttons[i])
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
