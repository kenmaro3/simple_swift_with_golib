//
//  Home.swift
//  SwiftWithGoLib
//
//  Created by Kentaro Mihara on 2023/10/26.
//

import SwiftUI
import Simple


struct Home: View {
    @State var value: Int = 0
    var body: some View {
        VStack{
            Text("value")
            Text("\(value)")
        }
        Button(action: {
            value = Int(Simple.SimpleAddOne(Int32(value)))
            
        }){
            Text("Call AddOne")
                .fontWeight(.semibold)
                .contentTransition(.identity)
                .foregroundColor(.white)
                .padding(.vertical, 15)
                .padding(.horizontal, 40)
                .background{
                    Capsule()
                        .fill(.black)
                }
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 10)
        .padding(.top, 25)
    }
}

#Preview {
    Home()
}
