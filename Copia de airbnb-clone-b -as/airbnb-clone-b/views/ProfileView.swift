//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                Image("perfil")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 10)
                
                Text("Hi I'm Ramirez")
                    .font(.title2)
                Text("Joined in 2023")
                    .foregroundStyle(.gray)
                //corte de lineas
                Divider()
                    .padding(.vertical)
                VStack(alignment: .leading, spacing: 20) {
                    Image(systemName:"checkmark.shield.fill")
                        .renderingMode(.template)
                    Text("Identity verification")
                        .font(.title3)
                    Text("Show others you're really you with the identity verification badge")
                    Button {
                        
                    } label: {
                        Text("Get the badge")
                            .padding()
                            .foregroundStyle(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.black)
                            )
                    }
                }
                Divider()
                    .padding(.vertical)
                
                Text("Matt confirmed")
                    .font(.title2)
                    .padding(.top)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "checkmark")
                    Text("Phone Number")
                        .padding(.leading, 8)
                }
                Divider()
                    .padding(.vertical)
            }.padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
