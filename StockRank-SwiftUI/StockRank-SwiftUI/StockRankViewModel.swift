//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 8/17/24.
//

import Foundation

final class StockRankViewModel: ObservableObject {
	@Published var models: [StockModel] = StockModel.list
	
	var numOfFavorites: Int {
		let favoriteStocks = models.filter {$0.isFavorites}
		return favoriteStocks.count
	}
}
