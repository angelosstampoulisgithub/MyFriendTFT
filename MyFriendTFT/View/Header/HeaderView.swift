//
//  HeaderView.swift
//  MyFriendTFT
//
//  Created by Angelos Staboulis on 18/5/26.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("MyFriendTFT")
            }.frame(maxWidth: .infinity,maxHeight: 35,alignment: .top)
        }
    }
}

