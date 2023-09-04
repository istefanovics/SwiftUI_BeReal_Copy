//
//  FeedCell.swift
//  BeRealCourse
//
//  Created by István Stefánovics on 2023. 09. 04..
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                //Username
                HStack {
                    Image("pp")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("istefanovics")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                        Text("Szeged • 7 hr late")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }
                }
                .padding(.horizontal)
                
                
                
                // Image
                
                ZStack {
                    
                    
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            VStack {
                                Image(systemName: "bubble.left.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                
                                Image(systemName: "face.smiling.inverse")
                                    .foregroundColor(.white)
                                    .foregroundColor(.red)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                    .padding(.top, 15)
                            }
                            .padding(.trailing, 20)
                            .padding(.bottom, 50)
                            
                        }
                    }
                    .zIndex(1)

                    VStack {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                        HStack {
                            Text("Add a comment...")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            .padding(.leading, 8)
                            Spacer()
                        }
                    }
                    
                    VStack {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                                .frame(width: 125, height: 165)
                                .overlay {
                                    Image("front")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 120, height: 160)
                                        .clipped()
                                        .cornerRadius(8)
                                }
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.top, 18)
                        Spacer()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 600)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
