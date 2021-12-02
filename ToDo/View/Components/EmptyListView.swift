//
//  EmptyListView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        Text("No Todos\nHave some rest!")
            .font(.system(size: 12, weight: .semibold, design: .rounded))
            .multilineTextAlignment(.center)
    }
}
