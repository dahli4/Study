//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 7/22/24.
//

import SwiftUI

struct StockRankView: View {
	
	@State var list = StockModel.list
	
    var body: some View {
		
		List($list) { list in
			StockRankRow(stock: list)
				.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))	// 인셋도 줄여주자
				.listRowSeparator(.hidden)
				.frame(height: 80)
		}
		.listStyle(.plain)	// 디자인을 커스텀하자
		.background(.black)
	}
}

#Preview {
    StockRankView()
}
