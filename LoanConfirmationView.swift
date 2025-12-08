import SwiftUI

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
                // Ação: Retorna para a tela anterior
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

struct LoanConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        LoanConfirmationView()
    }
}
