//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by Dahlia on 7/15/24.
//

import SwiftUI

struct ButtonView: View {
	var body: some View {
		Button {
			print("Button tapped")
		} label: {
			Text("Click Me")
				.font(.system(size: 20, weight: .bold, design: .default))
				.foregroundColor(.white)
		}
		.padding()
		.background(.orange)
		.cornerRadius(20)
		.opacity(4.3)
	}
}

#Preview {
	ButtonView()
}
