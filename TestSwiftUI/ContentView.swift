//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Razee Hussein-Jamal on 2023-09-14.
//

import SwiftUI
import Framework

struct ContentView: View {
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: MopViewController(), isActive: $isPresented) {
                    EmptyView()
                }
                
                Button {
                    self.isPresented = true
                } label: {
                    Text("Present")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
