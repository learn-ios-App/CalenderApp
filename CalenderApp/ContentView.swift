//
//  ContentView.swift
//  CalenderApp
//
//  Created by 渡邊魁優 on 2023/06/05.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var selectedDate: Date = Date()
    let calendar = Calendar.current
    
    @State var a = 0
    @State var b = 0
    @State var c = 0
    

    var body: some View {
        VStack {
            CurrentTimeView()
            
            DatePicker(
                "Select a date",
                selection: $selectedDate,
                displayedComponents: .date
            )
            .datePickerStyle(GraphicalDatePickerStyle())
        }
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
