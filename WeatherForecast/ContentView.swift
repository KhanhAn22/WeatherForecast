//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Nguyễn Hoàng Khánh An on 15/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 60)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.red
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding()
            Text("High: \(high)")
                .fontWeight(Font.Weight.medium)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.regular)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
