import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: 12) {
            
            // Ícone opcional
            Image(systemName: "tray")
                .font(.system(size: 50))
                .foregroundColor(.gray.opacity(0.6))
            
            // Título
            Text("Nenhum item ainda")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.primary.opacity(0.8))
            
            // Subtítulo
            Text("Adicione algo para começar")
                .font(.body)
                .foregroundColor(.secondary)
            
            // Botão para ação principal
            button("Adicionar novo item") {
                //ação aqui
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 8)
        }
        .padding()
    }
}
#Preview {
    EmptyStateView()
}
