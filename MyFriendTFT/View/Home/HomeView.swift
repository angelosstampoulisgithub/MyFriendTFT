//
//  HomeView.swift
//  MyFriendTFT
//
//  Created by Angelos Staboulis on 17/5/26.
//

import SwiftUI

struct HomeView: View {
    @State private var glow = false
    @State private var scale: CGFloat = 0.95

    var body: some View {
        ZStack {
            VStack{
                HeaderView()
                Image("MyFriendTFTBackground")
                    .resizable()
            }
        }
    }
}


#Preview {
    HomeView()
}
