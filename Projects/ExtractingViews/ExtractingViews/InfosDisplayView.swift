//
//  InfosDisplayView.swift
//  ExtractingViews
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct InfoDisplayView: View {

    var trackTitle: String
    var trackAuthor: String
    var isPlaying: Bool

    var body: some View {
        VStack {
            Text(isPlaying ? ("Playing : " + trackTitle) : ("Paused : " + trackTitle))
                .italic()
                .font(.title)
                .foregroundColor(.white)
            Text(trackAuthor)
                .bold()
                .foregroundColor(.gray)
        }
    }
}
