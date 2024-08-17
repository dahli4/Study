//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by Dahlia on 8/17/24.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
	
	@StateObject var userProfile = UserProfileSetting()
	
    var body: some Scene {
        WindowGroup {
			FirstView().environmentObject(userProfile)
        }
    }
}
