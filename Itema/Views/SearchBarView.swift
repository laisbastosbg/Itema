import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    var placeholder: String? = "Cabo USB"

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)

            TextField("Cabo USB", text: $searchText)
                .foregroundColor(.primary)
                .disableAutocorrection(true)

            Button(action: {
                print("Botão de microfone clicado (ação futura)")
            }) {
                Image(systemName: "mic.fill")
                    .foregroundColor(.gray)
            }
        }
        .padding(10)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .frame(maxWidth: 400)
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
