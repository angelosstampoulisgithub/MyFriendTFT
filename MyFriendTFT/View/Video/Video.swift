//
//  Video.swift
//  MyFriendTFT
//
//  Created by Angelos Staboulis on 17/5/26.
//

import SwiftUI
import AVKit

struct Video: View {
    @State private var player: AVPlayer? = {
        guard let url = Bundle.main.url(forResource: "karmen", withExtension: "mp4") else {
            print("ERROR: karmen.mp4 not found in bundle")
            return nil
        }
        return AVPlayer(url: url)
    }()

    var body: some View {
        VStack {
            HeaderView()

            VideoPlayer(player: player)
                .onAppear {
                    player?.seek(to: .zero)   
                    player?.play()
                }
                .onDisappear {
                    player?.pause()
                }
        }
    }
}

#Preview {
    Video()
}
