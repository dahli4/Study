//
//  Episode.swift
//  SwiftUI-DataFlow
//
//  Created by Dahlia on 7/16/24.
//

import SwiftUI

struct Episode{
	let title: String
	let showTitle: String
	let duration: TimeInterval
}

extension Episode {
	static let list: [Episode] = [
	Episode(title: "Americano", showTitle: "Cafe Macs Radio", duration: 300),
	Episode(title: "VC for startup", showTitle: "a16z Radio", duration: 500),
	]
}
