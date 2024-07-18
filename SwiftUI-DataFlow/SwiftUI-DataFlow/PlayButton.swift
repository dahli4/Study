//
//  PlayButton.swift
//  SwiftUI-DataFlow
//
//  Created by Dahlia on 7/18/24.
//

import SwiftUI

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
