//
//  UserStatsView.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 6.07.23.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
            
        }
        .frame(width: 76)
        
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView(value: 3, title: "Post")
    }
}
