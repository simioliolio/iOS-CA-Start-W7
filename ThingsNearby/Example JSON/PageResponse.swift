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
    "terms": {
        "description": [
            "capital and largest city of the United Kingdom"
        ]
    }
}
"""
}
