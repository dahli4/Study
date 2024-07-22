//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by Dahlia on 7/22/24.
//

import SwiftUI

struct SymbolRollerView: View {
	
	let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
	
	@State var imageName: String = "moon"		// 상태 변경을 저장해야 하는 친구
	
    var body: some View {
		VStack {
			Spacer()
			
			Image(systemName: imageName)
				.renderingMode(.template)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.padding()
			
			Spacer()
			
			Text(imageName)
				.font(.system(size: 40, weight: .bold))
			
			Button {
				imageName = symbols.randomElement()!
			} label: {
				HStack {
					Image(systemName: "arrow.3.trianglepath")
					VStack {
						Text("Reload")
							.font(.system(size: 30, weight: .bold, design: .default))
						Text("Click me to reload")
					}
				}
			}
			.foregroundStyle(.white)
			.frame(maxWidth: .infinity, minHeight: 80)
			.background(.pink)
			.clipShape(Capsule())
		}
	}
}

#Preview {
    SymbolRollerView()
}
