import SwiftUI

struct ContentView: View {
    var body: some View {
        // Usando o componente TagCard com dados de exemplo
        TagCard(tag: TagCardViewStockTag(imageName: "iconeDaTag", name: "Nome da Tag"))
            .padding() // Espaçamento opcional
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
