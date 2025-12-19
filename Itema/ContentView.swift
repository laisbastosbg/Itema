import SwiftUI

struct ContentView: View {

    private let viewModel = ActionButtonViewModel()

    var body: some View {
        VStack {
            ActionButtonRowView(viewModel: viewModel)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


