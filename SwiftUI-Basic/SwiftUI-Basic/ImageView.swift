//
//  ImageView.swift
//  SwiftUI-Basic
//
//  Created by Dahlia on 7/15/24.
//

import SwiftUI

struct ImageView: View {
	var body: some View {
		Image(systemName: "sun.max.fill")
			.renderingMode(.original)			//Image 반환
			.resizable()						//Image 반환
			.aspectRatio(contentMode: .fit) 	//View 반환 -> 타입에 맞게 순서 지키기
	}
}

#Preview {
	ImageView()
}
