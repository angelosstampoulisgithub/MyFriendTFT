//
//  Video.swift
//  MyFriendTFT
//
//  Created by Angelos Staboulis on 17/5/26.
//

import SwiftUI
import AVKit

struct Video: View {
    private var player: AVPlayer? {
        guard let url = Bundle.main.url(forResource: "karmen", withExtension: "mp4") else {
            print("ERROR: karmen.mp4 not found in bundle")
            return nil
        }
        return AVPlayer(url: url)
    }

    var body: some View {
        VideoPlayer(player: player)
            .onAppear {
                player?.play()
            }
            .onDisappear {
                player?.pause()
            }
            .navigationTitle("Βιντεο - Παραμύθι")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Video()
}
