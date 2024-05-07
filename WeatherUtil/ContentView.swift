//
//  ContentView.swift
//  WeatherUtil
//
//  Created by Khan, Owais on 5/6/24.
//
import Foundation
import SwiftUI

struct ContentView: View {
    
    @State var isPresenting = false
    var body: some View {
        GeometryReader {geo in
            ZStack{
                Image("LA")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                NavigationStack{
                    List(Week.days, id: \.self){day in
                        
                        HStack{
                            Image(systemName: day.icon)
                                .foregroundStyle(day.color)
                            Text("\(day.high)°F")
                            NavigationLink(day.name, value: day)
                            
                            //Text(day.name)
                        }
                        
                    }
                    .navigationTitle("Los Angeles")
                    .navigationDestination(for: Day.self){ day in
                        Text(day.name)
                        Button("More Info"){
                            isPresenting = true
                        }
                        .padding()
                        .sheet(isPresented: $isPresenting, content: {
                            return Text("H \(day.high)° L \(day.low) °F")
                        })
                    }
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
