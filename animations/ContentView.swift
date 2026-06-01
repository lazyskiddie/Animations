// content view

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 950, height: 950)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
