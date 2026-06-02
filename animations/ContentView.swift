import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var centerRotation = 0.0
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 220, height: 220)
                    .foregroundColor(.blue)
                    .blur(radius: isAnimating ? 40 : 10)
                    .opacity(isAnimating ? 0.4 : 0.1)
                    .scaleEffect(isAnimating ? 1.2 : 0.8)
                    .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: isAnimating)
                
                Circle()
                    .stroke(LinearGradient(colors: [.pink, .purple, .blue, .clear], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 4)
                    .frame(width: 240, height: 240)
                    .rotation3DEffect(.degrees(-centerRotation * 1.5), axis: (x: 1, y: -1, z: 0.5))

                Image(systemName: "snow")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .fill(isAnimating ? Color.clear : Color.clear)
//                            .blendMode(.color)
                            .opacity(0.3)
                    )
                    .shadow(color: .pink.opacity(isAnimating ? 0.8 : 0.0), radius: 15)
                    .shadow(color: .blue.opacity(isAnimating ? 0.6 : 0.0), radius: 30)
                    .scaleEffect(isAnimating ? 1.0 : 0.3)
                    .rotation3DEffect(.degrees(centerRotation), axis: (x: 1, y: 1, z: 1))
            }
            .animation(.spring(response: 1.2, dampingFraction: 0.7, blendDuration: 0), value: isAnimating)
        }
//        .padding(.top, 10)
//        .padding()
        .onAppear {
            isAnimating = true
            withAnimation(.linear(duration: 6).repeatForever(autoreverses: false)) {
                centerRotation = 360
            }
        }
    }
}

#Preview {
    ContentView()
}
