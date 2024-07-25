//
//  FrameworkCell.swift
//  AppleFramework-SwiftUI
//
//  Created by Dahlia on 7/25/24.
//

import SwiftUI

struct FrameworkCell: View {
	var framework: AppleFramework
    var body: some View {
		VStack {
			Image(framework.imageName)
				.resizable()
				.aspectRatio(contentMode: .fit)
			Spacer()
			
			Text(framework.name)
				.font(.system(size: 16, weight: .bold))
			Spacer()
		}
	}
}

#Preview(traits: .fixedLayout(width: 160, height: 250)) {
	FrameworkCell(framework: AppleFramework.list[0])
}
