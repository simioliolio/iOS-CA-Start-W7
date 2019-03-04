//
//  GeoQueryResponse.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 3/4/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import Foundation

struct GeoQueryResponse {
    static let json = """
{
	"batchcomplete": true,
	"query": {
		"pageids": [
			"17867",
			"53113",
			"294378",
			"367460",
			"540411",
			"4347521",
			"10596520",
			"20915928",
			"33109245",
			"40954625"
		],
		"pages": [{
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
			},
			{
				"pageid": 53113,
				"ns": 0,
				"title": "Charing Cross",
				"index": 1,
				"coordinates": [{
					"lat": 51.5073,
					"lon": -0.12755,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Westminster%2C_Charing_Cross_-_geograph.org.uk_-_865507.jpg/50px-Westminster%2C_Charing_Cross_-_geograph.org.uk_-_865507.jpg",
					"width": 50,
					"height": 38
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/7/7c/Westminster%2C_Charing_Cross_-_geograph.org.uk_-_865507.jpg",
					"width": 640,
					"height": 480
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:05:42Z",
				"lastrevid": 884203990,
				"length": 26024,
				"fullurl": "https://en.wikipedia.org/wiki/Charing_Cross",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Charing_Cross&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Charing_Cross"
			},
			{
				"pageid": 294378,
				"ns": 0,
				"title": "Great Smog of London",
				"index": 2,
				"coordinates": [{
					"lat": 51.507,
					"lon": -0.127,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Nelson%27s_Column_during_the_Great_Smog_of_1952.jpg/50px-Nelson%27s_Column_during_the_Great_Smog_of_1952.jpg",
					"width": 50,
					"height": 47
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/0/02/Nelson%27s_Column_during_the_Great_Smog_of_1952.jpg",
					"width": 640,
					"height": 605
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:08:16Z",
				"lastrevid": 884071177,
				"length": 21825,
				"fullurl": "https://en.wikipedia.org/wiki/Great_Smog_of_London",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Great_Smog_of_London&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Great_Smog_of_London"
			},
			{
				"pageid": 367460,
				"ns": 0,
				"title": "London commuter belt",
				"index": 3,
				"coordinates": [{
					"lat": 51.5073,
					"lon": -0.1277,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/London_Commuter_Belt_map_no_TTW.svg/50px-London_Commuter_Belt_map_no_TTW.svg.png",
					"width": 50,
					"height": 37
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/1/1f/London_Commuter_Belt_map_no_TTW.svg",
					"width": 1000,
					"height": 739
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:08:46Z",
				"lastrevid": 877901621,
				"length": 15716,
				"fullurl": "https://en.wikipedia.org/wiki/London_commuter_belt",
				"editurl": "https://en.wikipedia.org/w/index.php?title=London_commuter_belt&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/London_commuter_belt"
			},
			{
				"pageid": 540411,
				"ns": 0,
				"title": "Social Market Foundation",
				"index": 4,
				"coordinates": [{
					"lat": 51.5073509,
					"lon": -0.1277583,
					"primary": true,
					"globe": "earth"
				}],
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:09:51Z",
				"lastrevid": 855878578,
				"length": 7795,
				"fullurl": "https://en.wikipedia.org/wiki/Social_Market_Foundation",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Social_Market_Foundation&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Social_Market_Foundation"
			},
			{
				"pageid": 4347521,
				"ns": 0,
				"title": "Greater London Built-up Area",
				"index": 5,
				"coordinates": [{
					"lat": 51.5073,
					"lon": -0.1277,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Labelled_Greater_London_Built-up_Area.png/50px-Labelled_Greater_London_Built-up_Area.png",
					"width": 50,
					"height": 50
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/3/35/Labelled_Greater_London_Built-up_Area.png",
					"width": 1000,
					"height": 1000
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:22:08Z",
				"lastrevid": 882319070,
				"length": 11687,
				"fullurl": "https://en.wikipedia.org/wiki/Greater_London_Built-up_Area",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Greater_London_Built-up_Area&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Greater_London_Built-up_Area"
			},
			{
				"pageid": 10596520,
				"ns": 0,
				"title": "Drummonds Bank",
				"index": 6,
				"coordinates": [{
					"lat": 51.5069,
					"lon": -0.1278,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/49-50_Trafalgar_Square_%28geograph_5371754%29.jpg/50px-49-50_Trafalgar_Square_%28geograph_5371754%29.jpg",
					"width": 50,
					"height": 39
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/e/e1/49-50_Trafalgar_Square_%28geograph_5371754%29.jpg",
					"width": 640,
					"height": 495
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:31:11Z",
				"lastrevid": 884363896,
				"length": 4566,
				"fullurl": "https://en.wikipedia.org/wiki/Drummonds_Bank",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Drummonds_Bank&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Drummonds_Bank"
			},
			{
				"pageid": 20915928,
				"ns": 0,
				"title": "Farmers Club",
				"index": 7,
				"coordinates": [{
					"lat": 51.50712222,
					"lon": -0.12719167,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Londres_195..jpg/37px-Londres_195..jpg",
					"width": 37,
					"height": 50
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/4/46/Londres_195..jpg",
					"width": 692,
					"height": 922
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-02-28T21:56:00Z",
				"lastrevid": 850840707,
				"length": 2917,
				"fullurl": "https://en.wikipedia.org/wiki/Farmers_Club",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Farmers_Club&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Farmers_Club"
			},
			{
				"pageid": 33109245,
				"ns": 0,
				"title": "Equestrian statue of Charles I, Charing Cross",
				"index": 8,
				"coordinates": [{
					"lat": 51.507335,
					"lon": -0.127655,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Charles_I%2C_Trafalgar_Square.jpg/33px-Charles_I%2C_Trafalgar_Square.jpg",
					"width": 33,
					"height": 50
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/3/36/Charles_I%2C_Trafalgar_Square.jpg",
					"width": 1866,
					"height": 2800
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:52:35Z",
				"lastrevid": 858239976,
				"length": 7586,
				"fullurl": "https://en.wikipedia.org/wiki/Equestrian_statue_of_Charles_I,_Charing_Cross",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Equestrian_statue_of_Charles_I,_Charing_Cross&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Equestrian_statue_of_Charles_I,_Charing_Cross"
			},
			{
				"pageid": 40954625,
				"ns": 0,
				"title": "Embassy of Burundi, London",
				"index": 9,
				"coordinates": [{
					"lat": 51.5072,
					"lon": -0.1283,
					"primary": true,
					"globe": "earth"
				}],
				"thumbnail": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Uganda_House_London.JPG/50px-Uganda_House_London.JPG",
					"width": 50,
					"height": 38
				},
				"original": {
					"source": "https://upload.wikimedia.org/wikipedia/commons/8/87/Uganda_House_London.JPG",
					"width": 3264,
					"height": 2448
				},
				"contentmodel": "wikitext",
				"pagelanguage": "en",
				"pagelanguagehtmlcode": "en",
				"pagelanguagedir": "ltr",
				"touched": "2019-03-04T01:58:10Z",
				"lastrevid": 775129666,
				"length": 1807,
				"fullurl": "https://en.wikipedia.org/wiki/Embassy_of_Burundi,_London",
				"editurl": "https://en.wikipedia.org/w/index.php?title=Embassy_of_Burundi,_London&action=edit",
				"canonicalurl": "https://en.wikipedia.org/wiki/Embassy_of_Burundi,_London"
			}
		]
	}
}
"""
}
