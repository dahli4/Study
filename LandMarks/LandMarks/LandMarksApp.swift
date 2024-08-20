//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Dahlia on 8/19/24.
//

import SwiftUI

@main
struct LandMarksApp: App {
	@State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
				.environment(modelData)
        }
    }
}
