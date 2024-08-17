//
//  UserProfileSetting.swift
//  EnvironmentObjTest
//
//  Created by Dahlia on 8/17/24.
//

import Foundation

final class UserProfileSetting: ObservableObject {
	@Published var name: String = ""
	@Published var age: Int = 0
	
	func haveBirthDayParty() {
		age += 1
	}
}
