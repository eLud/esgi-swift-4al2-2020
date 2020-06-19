//
//  ForEach.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ForEachDemo: View {
    var body: some View {
        HStack(alignment: .center) {
            ForEach(PodcastTrack.demoTracks) { track in
                Text(track.title)
            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachDemo()
    }
}
