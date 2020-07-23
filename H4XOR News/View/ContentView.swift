//
//  ContentView.swift
//  H4XOR News
//
//  Created by Pradnesh Kore on 21/07/20.
//  Copyright © 2020 Pradnesh Kore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url : post.url)) {
                    HStack {
                        Text("\(post.points)")
                            .bold()
                            .background(Color(red: 0.92, green: 0.71, blue: 0.26))
                            .cornerRadius(30)
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear(){
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


