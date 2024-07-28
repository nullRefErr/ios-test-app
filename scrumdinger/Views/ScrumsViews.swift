//
//  ScrumsViews.swift
//  scrumdinger
//
//  Created by Ahmet Eren Yatkın on 27.07.2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Detail(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(Color(scrum.theme.mainColor))
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ScrumsView_Preview: PreviewProvider {
    static var previews: some View{
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
