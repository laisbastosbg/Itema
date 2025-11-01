import SwiftUI

// --- PONTO DE ENTRADA DO APP ---
// Isso inicia o aplicativo
@main
struct EmprestimoApp: App {
    var body: some Scene {
        WindowGroup {
            // Define que a primeira tela a ser aberta é a ContentView
            ContentView()
        }
    }
}

// --- TELA 1: PRINCIPAL (HOME) ---
// Esta é a tela inicial com o botão
struct ContentView: View {
    
    // Controla o fluxo de navegação
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        // NavigationStack é essencial para "empurrar" novas telas
        NavigationStack(path: $navigationPath) {
            
            VStack(spacing: 20) {
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)
                
                Text("Tela Principal")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Botão que simula o "Salvar Registro"
                Button("Simular Registro de Empréstimo") {
                    // 1. Lógica de salvar 
                    
                    // 2. Navega para a tela de confirmação
                    // Usa uma "tag" de texto para identificar o destino
                    navigationPath.append("Confirmacao")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding()
            .navigationTitle("Minha Home") // Título na barra superior
            
            // Define o destino da navegação
            // Quando a tag "Confirmacao" é chamada, ele abre a LoanConfirmationView
            .navigationDestination(for: String.self) { destinationTag in
                if destinationTag == "Confirmacao" {
                    LoanConfirmationView()
                }
            }
        }
    }
}

// --- TELA 2: CONFIRMAÇÃO ---
// Esta é a tela de sucesso
struct LoanConfirmationView: View {
    
    // Para implementar a navegação de retorno
    @Environment(\.dismiss) var dismiss
    
    // Para controlar a animação de fade-in
    @State private var hasAppeared = false
    
    var body: some View {
        VStack(spacing: 24) {
            
            Spacer() // Empurra para o centro
            
            // Ícone de Check
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.green)
                .opacity(hasAppeared ? 1.0 : 0.0) // Para fade-in
            
            // Mensagem Personalizada
            Text("Obrigada! Seu registro foi salvo.")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .opacity(hasAppeared ? 1.0 : 0.0) // Para fade-in
            
            Spacer() // Empurra para o centro
            
            // Botão Continuar
            Button("Continuar") {
                // Ação: Retorna para a tela anterior (ContentView)
                dismiss()
            }
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
        // Ativa a animação quando a tela aparece
        .onAppear {
            withAnimation(.easeIn(duration: 0.6)) {
                hasAppeared = true
            }
        }
        // Esconde o botão "Voltar" padrão da navegação
        .navigationBarBackButtonHidden(true)
    }
}

// --- PREVIEWS (Para o Xcode mostrar o design) ---
// Isso ajuda o Xcode a desenhar as telas no editor
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoanConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        // Simula como a tela se parece dentro de um fluxo de navegação
        NavigationView {
            LoanConfirmationView()
        }
    }
}
