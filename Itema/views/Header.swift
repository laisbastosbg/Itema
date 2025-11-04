
import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Loop stock")
                    .font(.system(size:34, weight: .bold))
                    .foregroundColor(.black)
                    .padding()
                Spacer()
                Button("estoque completo"){

                }.padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .cornerRadius(56)
                .frame(width: 170, height: 42)
                .font(.system(size:10, weight: .bold))
            }
            Spacer()
        }
        .padding(.top, 16)
        .padding(.trailing, 16)
    }
}

#Preview {
    HeaderView()
}
