//
//  ContentView.swift
//  scrumdinger
//
//  Created by Ahmet Eren Yatkın on 19.07.2024.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value:5, total: 15);
            HStack{
                VStack(alignment:.leading){
                    Text("Seconds Elapsed");
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining");
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 Minute")
            
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer();
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }.accessibilityLabel("Next speaker")
        }.padding()
    }
}

struct MeetingView_Preview: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
