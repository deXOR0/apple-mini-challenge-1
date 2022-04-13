//
//  JournalHeaderView.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 14/04/22.
//

import SwiftUI

struct JournalHeaderView: View {
    var body: some View {
        VStack {
                Text("4 April 2022")
                    .font(Font.system(size: 21))
                    .fontWeight(.bold)
                Text("You spent 3 hour(s) of gaming over 2 game session(s).")
                    .padding(.vertical,5)
                    .multilineTextAlignment(.center)
            }.frame(width: 300, height: 200, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 320, height: 150, alignment: .topLeading)
                .foregroundColor(Color.white))
    }
    
}

struct JournalHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        JournalHeaderView()
    }
}
