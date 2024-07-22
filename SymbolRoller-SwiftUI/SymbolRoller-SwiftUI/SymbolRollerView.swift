//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by Dahlia on 7/22/24.
//

import SwiftUI

struct SymbolRollerView: View {
	
	let symbols: [String] = ["sun.min","moon","cloud","wind","snowflake"]
	
	@State var imageName: String = "moon"
	
    var body: some View {
		VStack {
			Image(systemName: imageName)
				.renderingMode(.template)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.padding()
			
			Text(imageName)
				.font(.system(size: 40, weight: .bold))
			
			Button {
				print("Button Tapped")
			} label: {
				HStack {
					Image(systemName: "arrow.3.trianglepath")
					VStack {
						Text("Reload")
						Text("Reload")
					}
				}
			}
			.frame(maxWidth: .infinity, minHeight: 80)
			.background(.pink)
			.clipShape(Capsule())

		}
	}
}

#Preview {
    SymbolRollerView()
}
