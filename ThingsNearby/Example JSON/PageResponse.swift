//
//  imageJSON.swift
//  ThingsNearbyTests
//
//  Created by Simon Haycock on 2/4/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import Foundation

struct PageResponse {
    static let json = """
{
	"pageid": 17867,
	"ns": 0,
	"title": "London",
	"index": 0,
	"coordinates": [{
		"lat": 51.50722222,
		"lon": -0.1275,
		"primary": true,
		"globe": "earth"
	}],
	"thumbnail": {
		"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/London_Montage_L.jpg/33px-London_Montage_L.jpg",
		"width": 33,
		"height": 50
	},
	"original": {
		"source": "https://upload.wikimedia.org/wikipedia/commons/c/cd/London_Montage_L.jpg",
		"width": 1200,
		"height": 1809
	},
	"contentmodel": "wikitext",
	"pagelanguage": "en",
	"pagelanguagehtmlcode": "en",
	"pagelanguagedir": "ltr",
	"touched": "2019-03-04T16:31:43Z",
	"lastrevid": 886088808,
	"length": 242379,
	"fullurl": "https://en.wikipedia.org/wiki/London",
	"editurl": "https://en.wikipedia.org/w/index.php?title=London&action=edit",
	"canonicalurl": "https://en.wikipedia.org/wiki/London"
}
"""
}
