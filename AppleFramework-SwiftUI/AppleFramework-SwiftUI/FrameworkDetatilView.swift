//
//  FrameworkDetatilView.swift
//  AppleFramework-SwiftUI
//
//  Created by Dahlia on 12/29/24.
//

import SwiftUI

struct FrameworkDetatilView: View {
	@Binding var framework: AppleFramework
	
    var body: some View {
		VStack{
			Image(framework.imageName)
			Text(framework.name)
			Text(framework.description)
			
			Button {
				print("=> Tapped!")
			} label: {
				Text("Button")
			}
		}
	}
}

#Preview {
	FrameworkDetatilView(framework: .constant(AppleFramework.list[1]))
}
