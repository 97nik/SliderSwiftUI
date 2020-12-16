//
//  ContentView.swift
//  SliderSwiftUI
//
//  Created by Никита on 15.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValueRed = Double.random(in: 0...255)
    @State var sliderValueBlue = Double.random(in: 0...255)
    @State var sliderValueGreen = Double.random(in: 0...255)
    @State var colorRgb = UIColor()
    let colorbackgruand = UIColor(red:51/250, green:153/250 , blue: 204/250 , alpha: 1)
    
    var body: some View {
        ZStack {
            Color(colorbackgruand)
                .edgesIgnoringSafeArea(.all)
            VStack() {
                ColorView(color:          UIColor(red:CGFloat(sliderValueRed)/250, green:CGFloat(sliderValueGreen)/250 , blue: CGFloat(sliderValueBlue)/250, alpha: 1 ))
                
                SliderColor(value: $sliderValueRed, colorLineSlider: .red)
               
                SliderColor(value: $sliderValueBlue,colorLineSlider: .blue)
               
                SliderColor(value: $sliderValueGreen, colorLineSlider: .green)
               
                Spacer()
            }
            .padding(.horizontal)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
