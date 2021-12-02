//
//  ContentView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("My Todos")
                .font(.system(size: 26, weight: .black, design: .rounded))
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("New Todo")
                    .padding(10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
