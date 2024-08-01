//
//  StockRank_SwiftUIApp.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 7/22/24.
//

import SwiftUI

@main
struct StockRank_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            StockRankView()
				.preferredColorScheme(.dark)
        }
    }
}
