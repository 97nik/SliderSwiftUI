//
//  Slider.swift
//  SliderSwiftUI
//
//  Created by Никита on 15.12.2020.
//

import SwiftUI

struct SliderColor: View {
    @Binding var value: Double
    
    let colorLineSlider: UIColor
    
    @State var stringValue = " "
    
    
    var body: some View {
        let someNumberProxy = Binding<String>(
            get: { String(format: "%.00f", Double(self.value)) },
            set: {
                if let value = NumberFormatter().number(from: $0) {
                    self.value = value.doubleValue
                }
            }
        )
        
        VStack{
            HStack {
                Text("\(lround(value))").foregroundColor(.white)
                    // .frame(width: 50.0, height: 40.0)
                    .multilineTextAlignment(.center)
                
                Slider(value: $value, in: 0...255, step: 1)
                    .foregroundColor(.green)
                    .accentColor(Color(colorLineSlider))
                
                TextField("\(lround(value))", text: someNumberProxy)
                    .frame(width: 50.0, height: 40.0)
                    .background(Color(.white))
                    .multilineTextAlignment(.center)
                    .cornerRadius(5)
                    .keyboardType(.numberPad)
            }
            .padding(.horizontal)
        }
        
    }
    
}

