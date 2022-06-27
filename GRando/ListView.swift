//
//  ListView.swift
//  GRando
//
//  Created by galmamim on 22/06/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List(circuits) { circuit in
                NavigationLink(destination: DetailView(circuit: circuit)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(circuit.title)")
                                .font(.system(size: 18, weight: .bold))
                            
                            Text("\(circuit.description)")
                        }
                        Spacer()
                        
                        Image(circuit.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
                }
            .navigationBarTitle("Ceruits")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var image: String
}

var circuits = [
    ListItem(title: "Vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors2", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking"),
    ListItem(title: "vercors", description: "description", image: "hiking")
]
