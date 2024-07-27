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
        List(scrums) { scrum in
            CardView(scrum: scrum).listRowBackground(Color(scrum.theme.mainColor))
        }
    }
}

struct ScrumsView_Preview: PreviewProvider {
    static var previews: some View{
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
