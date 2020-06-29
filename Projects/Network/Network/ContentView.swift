//
//  ContentView.swift
//  Network
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var image: UIImage?

//    @ObservedObject

    var body: some View {
        VStack {
            if image != nil {
                Image(uiImage: image!)
            }
            Button("Get image") {
                self.loadData()
            }
        }.onAppear {
            self.loadData()
        }
    }

    func loadData() {

        //URLSession

        //Get a session
        let session = URLSession.shared

        //Get an url
        guard let url = URL(string: "https://developer.apple.com/home/images/tile-ipados-14/ipados-14-large_2x.png") else {
            return
        }

//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"

        //Create a task
        let task = session.dataTask(with: url) { (data, response, error) in
            //Manage the result

            //Check error
            guard error == nil else { return }
            guard let data = data else { return }

            //Parse the result
            let image = UIImage(data: data)
            self.image = image
        }

        //Execute the task
        task.resume()

        self.decodePodcasts()
    }

    func decodePodcasts() {

        guard let data = encodePodcasts() else { return }

        //Codable
        let decoder = JSONDecoder()
        if let podcasts = try? decoder.decode([Podcast].self, from: data) {
            print(podcasts)
        }

    }

    func encodePodcasts() -> Data? {

        let podcast1 = Podcast(title: "My podcast", author: "Me", duration: 30)
        let podcast2 = Podcast(title: "Your podcast", author: "You", duration: 30)
        let podArray = [podcast1, podcast2]

        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(podArray) else {
            return nil
        }
        print(String(data: data, encoding: .utf8)!)
        return data
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Podcast: Codable {
    let title: String
    let author: String
    let duration: Double
}
