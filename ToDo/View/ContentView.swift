//
//  ContentView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            Text("My Todos")
                .font(.system(size: 40, weight: .black, design: .rounded))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
