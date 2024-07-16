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
			
			ImageView(isPlaying: $isPlaying)
		}
	}
}

#Preview {
	PlayerView(episode: Episode.list[0])
}

struct PlayButton: View {
	@Binding var isPlaying: Bool
	
	var body: some View {
		Button {
			self.isPlaying.toggle()
		} label: {
			Image(systemName: isPlaying ? "pause.circle" : "play.circle")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(height: 80)
				.foregroundStyle(
					.linearGradient(
						colors: [.yellow, .blue],
						startPoint: .top,
						endPoint: .bottom
					)
				)
		}
	}
}

struct ImageView: View {
	@Binding var isPlaying: Bool

	var body: some View {
		Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
			.resizable()
			.renderingMode(.original)
			.aspectRatio(contentMode: .fit)
			.frame(width: 80, height: 80)
	}
}
