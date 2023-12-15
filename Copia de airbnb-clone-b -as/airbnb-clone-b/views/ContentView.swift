import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 50) {
                    Category(icon: "ovni", text: "¡OMG!")
                    Category(icon: "beaches", text: "Playas")
                    Category(icon: "home", text: "Casa Pequeña")
                    Category(icon: "golf", text: "Golf")
                    Category(icon: "landscape", text: "Increíble")
                }
            }
            .padding([.horizontal])
            
            Divider()
            
            List(contentViewModel.airbnb.places, id: \.name) { place in
                reels(place: place)
            }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .task {
                await contentViewModel.loadData()
            }
            
            Spacer()
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
