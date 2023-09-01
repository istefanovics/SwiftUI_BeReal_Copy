//
//  Feed.swift
//  BeRealCourse
//
//  Created by István Stefánovics on 2023. 08. 31..
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ZStack {
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "person.2.fill")
                                .foregroundColor(.white)
                            Spacer()
                            Text("BeReal.")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 22))
                            Spacer()
                            Image("profile.placeholder")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        }
                        .padding(.horizontal)
                        HStack {
                            Text("My Fiends")
                                .foregroundColor(.white)
                            Text("Discovery")
                                .foregroundColor(.gray)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
