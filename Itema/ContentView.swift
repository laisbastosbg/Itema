import SwiftUI

struct ContentView: View {
    // Controla o caminho da navegação
    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 20) {
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)
                
                Text("Tela Principal")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Botão para testar a sua tela nova
                Button("Simular Empréstimo") {
                    navigationPath.append("Confirmacao")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            // Aqui é onde a mágica acontece: ele liga o texto "Confirmacao" à sua tela
            .navigationDestination(for: String.self) { tag in
                if tag == "Confirmacao" {
                    LoanConfirmationView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
