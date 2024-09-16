//
//  SwiftUIView.swift
//  FitnessApp
//
//  Created by John Leahy on 2024-09-15.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 32
    @State var stand: Int = 5
    
    var mockActivities = [
        Activity(id: 1, title: "Standing", subtitle: "Hours", image: "figure.stand", tintColor: .blue, amount: "4"),
        Activity(id: 2, title: "Walking", subtitle: "Hours", image: "figure.walk", tintColor: .green, amount: ""),
        Activity(id: 3, title: "Running", subtitle: "Hours", image: "figure.run", tintColor: .red, amount: ""),
       Activity(id: 4, title: "Cycling", subtitle: "Hours", image: "figure.cycle", tintColor: .yellow, amount: "")
    ]
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack (alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        VStack {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            Text("123 kcal")
                                .bold()
                        }.padding(.bottom)
                        
                        VStack {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            Text("41 Minutes")
                                .bold()
                        }.padding(.bottom)
                        
                        VStack {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            Text("8 Hours")
                                .bold()
                        }.padding(.bottom)
                        
                    }
                    
                    Spacer()
                    ZStack {
                        ProgressCircleView(progress: $calories, color:.red, goal: 200)
                        
                        ProgressCircleView(progress: $active, color:.green, goal: 60).padding(.all,20)
                        ProgressCircleView(progress: $stand, color:.blue, goal: 8).padding(.all,40)
                        
                    }
                    
                    Spacer()
                }
                
                HStack{
                    Text("Fitness activity")
                    
                    Spacer()
                    
                    Button {
                        print("Show more")
                    } label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }.padding(.horizontal)

                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2 )){
                    ForEach(mockActivities, id: \.id) { activity in
                        ActivityCard(activity: activity)
                    }
                }
                
            }.padding(.horizontal)
            }
        }
    }
    
    
    #Preview {
        HomeView()
    }
