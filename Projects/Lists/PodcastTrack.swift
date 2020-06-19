//
//  PodcastTrack.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct PodcastTrack: Identifiable {

    let id = UUID()
    let title: String
    let author: String
    let duration: Double

    static let demoTracks: [PodcastTrack] = [PodcastTrack(title: "Title 1", author: "Author 1", duration: 120), PodcastTrack(title: "Title 2", author: "Author 2", duration: 80)]
}
