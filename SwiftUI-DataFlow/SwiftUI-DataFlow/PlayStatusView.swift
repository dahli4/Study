//
//  PlayStatusView.swift
//  SwiftUI-DataFlow
//
//  Created by Dahlia on 7/18/24.
//

import SwiftUI

struct PlayingStatusView: View {
	@Binding var isPlaying: Bool

	var body: some View {
		Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
			.resizable()
			.renderingMode(.original)
			.aspectRatio(contentMode: .fit)
			.frame(width: 80, height: 80)
	}
}
