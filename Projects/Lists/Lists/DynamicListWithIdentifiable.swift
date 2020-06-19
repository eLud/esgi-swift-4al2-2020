//
//  DynamicListWithIdentifiable.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct DynamicListWithIdentifiable: View {

    let tracks = PodcastTrack.demoTracks

    var body: some View {
        List(tracks) { track in
            Text(track.title)
        }
    }
}

struct DynamicListWithIdentifiable_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListWithIdentifiable()
    }
}
