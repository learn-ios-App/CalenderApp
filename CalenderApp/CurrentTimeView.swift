//
//  CurrentTimeView.swift
//  CalenderApp
//
//  Created by 渡邊魁優 on 2023/06/05.
//

import SwiftUI

struct CurrentTimeView: View {
    
    @State private var currentDate = Date()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy/MM/dd HH:mm:ss"
        return formatter
    }
    
    var body: some View {
        Text(dateFormatter.string(from: currentDate))
            .onReceive(timer) { _ in
                currentDate = Date()
            }
    }
}

struct CurrentTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTimeView()
    }
}


