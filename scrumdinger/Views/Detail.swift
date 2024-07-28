//
//  Detail.swift
//  scrumdinger
//
//  Created by Ahmet Eren Yatkın on 28.07.2024.
//

import Foundation
import SwiftUI

struct Detail: View {
    var scrum: DailyScrum
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Meetin Info")) {
                    NavigationLink(destination: MeetingView()) {
                        Label("Start Meeting", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                    HStack {
                        Label("Length", systemImage: "clock")
                        Spacer()
                        Text(String(scrum.lengthInMinutes) + " minutes")
                    }
                    .accessibilityElement(children: .combine)
                    HStack {
                        Label("Theme", systemImage: "paintpalette")
                        Spacer()
                        Text(scrum.theme.name)
                            .padding(4)
                            .background(scrum.theme.mainColor)
                            .foregroundColor(scrum.theme.accentColor)
                            .cornerRadius(4)
                    }
                }
                Section(header: Text("Attendees")) {
                    ForEach(scrum.attendees, id: \.self) { attendee in
                        Label(attendee, systemImage: "person")
                    }
                }
            }
        }
    }
}

struct Detail_Preview: PreviewProvider {
    static var previews: some View {
        Detail(scrum: DailyScrum.sampleData[0])
    }
}
