import SwiftUI

// MARK: - Modelo
struct MyItem: Identifiable {
    var id = UUID()
    var timestamp: Date
}

// MARK: - Empty State View
struct EmptyState: View {
    var icon: String
    var title: String
    var message: String
    var actionTitle: String
    var action: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 48))
                .foregroundColor(.gray)

            Text(title)
                .font(.title2)
                .bold()

            Text(message)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)

            Button(actionTitle, action: action)
                .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: - ContentView
struct ContentView: View {
    @State private var items: [Item] = []

    var body: some View {
        NavigationSplitView {
            if items.isEmpty {
                EmptyState(
                    icon: "tray",
                    title: "Nada por aqui ainda",
                    message: "Quando você adicionar um item, ele aparecerá aqui.",
                    actionTitle: "Adicionar item",
                    action: {
                        // ação futura
                        items.append(Item(timestamp: Date()))
                    }
                )
            } else {
                List {
                    ForEach(items) { item in
                        NavigationLink {
                            Text("Item at \(item.timestamp, format: .dateTime)")
                        } label: {
                            Text(item.timestamp, format: .dateTime)
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
            }
        } detail: {
            Text("Select an Item")
        }
    }

    // MARK: - Função necessária para o .onDelete
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
