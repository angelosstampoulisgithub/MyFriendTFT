//
//  ContentView.swift
//  MyFriendTFT
//
//  Created by Angelos Staboulis on 17/5/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Αρχική")
                }
            
            Writer()
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                    Text("Συγγραφέας")
                }
            
            
            Gallery()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Παραμύθι")
                }
            
            
            Video()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Βίντεο")
                }
        }
    }
}

#Preview {
    ContentView()
}
