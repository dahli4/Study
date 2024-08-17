//
//  ContentView.swift
//  EnvironmentObjTest
//
//  Created by Dahlia on 8/17/24.
//

import SwiftUI

struct FirstView: View {
	
	@EnvironmentObject var userProfile: UserProfileSetting
	
	var body: some View {
		NavigationStack {
			VStack(spacing: 30) {
				Text("Current Age: \(userProfile.age)")
				
				NavigationLink {
					SecondView()
				} label: {
					Text("Second View")
				}
				
				Button {
					userProfile.haveBirthDayParty()
				} label: {
					Text("Having Birthday Party")
				}
			}
			.navigationTitle("First View")
		}
	}
}

#Preview {
	FirstView().environmentObject(UserProfileSetting())
}
