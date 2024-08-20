//
//  CircleImage.swift
//  LandMarks
//
//  Created by Dahlia on 8/19/24.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
	
	var body: some View {
		image
			.clipShape(Circle(), style: FillStyle())
			.overlay {
				Circle().stroke(.white, lineWidth: 4)
			}
			.shadow(radius: 7)
	}
}

#Preview {
	CircleImage(image: Image("turtlerock"))
}
