//
//  ContentView.swift
//  Sample Application
//
//  Created by Marcin Jędrzejak on 20/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showFAQ = false
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .navigationTitle("Sample Application")
            .toolbar {
                Button {
                    showFAQ.toggle()
                } label: {
                    Image(systemName: "info.circle.fill")
                }
            }
            .sheet(isPresented: $showFAQ) {
                FAQView()
            }
        }
    }
}

#Preview {
    ContentView()
}
