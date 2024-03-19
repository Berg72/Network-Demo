//
//  ContentView.swift
//  Network Demo
//
//  Created by Mark Bergeson on 3/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            
            Task {
                await apiCall()
            }
            
        }
    }
    
    func apiCall() async {
        
        
        if let url = URL(string: "https://api.pexels.com/v1/search?query=nature&per_page=1") {
            
            
            var request = URLRequest(url: url)
            request.addValue("PWUp6sAtMGRrY1HPn8r6nOw8qOCdsc136yAdSyL6Y5m1WEDSc2cCitjh", forHTTPHeaderField: "Authorization")
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            }
            catch {
                print(error)
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
