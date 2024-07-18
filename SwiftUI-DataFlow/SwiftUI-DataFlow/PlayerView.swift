//
//  PlayerView.swift
//  SwiftUI-DataFlow
//
//  Created by Dahlia on 7/16/24.
//

import SwiftUI

struct PlayerView: View {
	let episode: Episode
	@State private var isPlaying: Bool = false
	
	var body: some View {
		VStack(spacing: 20) {
			Text(episode.title)
				.font(.largeTitle)
			Text(episode.showTitle)
				.font(.title3)
				.foregroundColor(.gray)
			
			PlayButton(isPlaying: $isPlaying)
			
			PlayingStatusView(isPlaying: $isPlaying)
		}
	}
}

#Preview {
	PlayerView(episode: Episode.list[0])
}
