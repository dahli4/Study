//
//  ThirdView.swift
//  EnvironmentObjTest
//
//  Created by Dahlia on 8/17/24.
//

import SwiftUI

struct ThirdView: View {
	@EnvironmentObject var userProfile: UserProfileSetting
	
	var body: some View {
		VStack(spacing: 30) {
			Text("Current Age: \(userProfile.age)")
			
			
			Text("Third View")
			
			
			Button {
				userProfile.haveBirthDayParty()
			} label: {
				Text("Having Birthday Party")
			}
		}
	}
}

#Preview {
	ThirdView().environmentObject(UserProfileSetting())
}
