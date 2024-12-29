//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by Dahlia on 12/29/24.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
	@Published var models: [AppleFramework] = AppleFramework.list
	@Published var isShowingDetails: Bool = false
}
