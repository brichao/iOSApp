//
//  DetailView.swift
//  GRando
//
//  Created by galmamim on 22/06/2022.
//

import SwiftUI


import SwiftUI

struct DetailView: View {
    var circuit: ListItem = circuits[0]
    @State var showPopup = false
    
    var body: some View {
        VStack(alignment: .leading) {
           Image(circuit.image)
            .resizable()
                .frame(width: 350, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .onTapGesture {
                    showPopup.toggle()
                }
                
                .sheet(isPresented: $showPopup, content: {
                   
                })
            Text(circuit.title)
                .font(.title)
                .padding()
                 
                .multilineTextAlignment(.center)
            Text(circuit.description)
                .font(.subheadline)
            Spacer()
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(circuit: circuits[0])
.previewInterfaceOrientation(.portrait)
    }
}

