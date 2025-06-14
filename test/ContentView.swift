import FoundationModels
import Playgrounds


#Playground {
    let session = LanguageModelSession(instructions: "You are William Shakespeare. Answer in his style.")
    let response = try await session.respond(to: "Describe weather for today in couple of sentences.")
    
    

}

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Button(action: { print("First tapped") }) {
                Text("First")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue, Color.cyan]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(color: Color.purple.opacity(0.3), radius: 8, x: 0, y: 4)
            }
            Button(action: { print("Second tapped") }) {
                Text("Second")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.pink, Color.yellow]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(color: Color.orange.opacity(0.25), radius: 8, x: 0, y: 4)
            }
            Button(action: { print("Third tapped") }) {
                Text("Third")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.green, Color.teal, Color.mint]),
                            startPoint: .top,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(color: Color.green.opacity(0.25), radius: 8, x: 0, y: 4)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

