import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var isRotating = false
    
    var body: some View {
        TabView {
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
                        .rotation3DEffect(.degrees(isRotating ? 360 : 0), axis: (x: 1, y: -1, z: 0.5))
                        .animation(.linear(duration: 6).repeatForever(autoreverses: false), value: isRotating)
                    
                    Image(systemName: "snow")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                        .shadow(color: .pink.opacity(isAnimating ? 0.8 : 0.0), radius: 15)
                        .shadow(color: .blue.opacity(isAnimating ? 0.6 : 0.0), radius: 30)
                        .scaleEffect(1.0) // FIXED: Removed the toggle. It stays at 1.0 completely static.
                        .rotation3DEffect(.degrees(isRotating ? 360 : 0), axis: (x: 1, y: 1, z: 1))
                        .animation(.linear(duration: 6).repeatForever(autoreverses: false), value: isRotating)
                }
                .animation(.spring(response: 1.2, dampingFraction: 0.7, blendDuration: 0), value: isAnimating)
            }
            .onAppear {
                isAnimating = true
                isRotating = true
            }
            .tabItem {
                Label("snow", systemImage: "snow")
            }
            
            // tab - 2
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                    HStack{
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                        Circle()
                            .foregroundStyle(.white)
                    }
                }
            }
            .tabItem {
                Label("circle", systemImage: "circle.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
