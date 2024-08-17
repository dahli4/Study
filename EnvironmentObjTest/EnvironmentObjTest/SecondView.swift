//
//  SecondView.swift
//  EnvironmentObjTest
//
//  Created by Dahlia on 8/17/24.
//

import SwiftUI

struct SecondView: View {
	@EnvironmentObject var userProfile: UserProfileSetting
	
	var body: some View {
		NavigationStack {
			VStack(spacing: 30) {
				Text("age: \(userProfile.age)")

				NavigationLink {
					ThirdView()
				} label: {
					Text("Third View")
				}
								
				Button {
					userProfile.age = 0
				} label: {
					Text("reset age")
				}

			}
			.navigationTitle("Second View")
		}
	}
}

#Preview {
	SecondView().environmentObject(UserProfileSetting())
}
