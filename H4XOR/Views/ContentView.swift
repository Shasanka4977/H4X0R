//
//  ContentView.swift
//  H4XOR
//
//  Created by Jovial Software on 11/11/1941 Saka.
//  Copyright © 1941 Jovial Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                }
                
        .navigationBarTitle("H4XOR")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//struct Post: Identifiable{
//    let id: String
//    let title: String
//}
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Honey"),
//    Post(id: "3", title: "Bunny")
//]
