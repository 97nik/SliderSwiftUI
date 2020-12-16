//
//  ColorView.swift
//  SliderSwiftUI
//
//  Created by Никита on 15.12.2020.
//

import SwiftUI

struct ColorView: View {
    
    let color: UIColor
    
    var body: some View {
        ZStack{
            Color(.white)
                .frame(width: 400, height: 150)
                .cornerRadius(10)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color(color))
                .frame(width: 400, height: 150)
                .border(Color.white, width: 5)
                .cornerRadius(10)
            
        }
    }
}
struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .red)
    }
}
