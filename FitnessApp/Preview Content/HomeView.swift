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
    
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
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
            }
        }
    }
    
}

#Preview {
    HomeView()
}
